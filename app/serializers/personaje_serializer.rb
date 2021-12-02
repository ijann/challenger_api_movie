class PersonajeSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :imagen, :edad, :peso, :historia

  has_many :peliculas
end
