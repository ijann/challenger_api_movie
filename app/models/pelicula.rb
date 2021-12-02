# == Schema Information
#
# Table name: peliculas
#
#  id           :integer          not null, primary key
#  titulo       :string
#  imagen       :string
#  calificacion :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  genero_id    :integer
#
class Pelicula < ApplicationRecord

  belongs_to :genero
  has_and_belongs_to_many :personajes
end
