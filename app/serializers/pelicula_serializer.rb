class PeliculaSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :imagen, :calificacion

  belongs_to :genero
  has_many :personajes
end
