# == Schema Information
#
# Table name: personajes
#
#  id         :integer          not null, primary key
#  nombre     :string
#  imagen     :string
#  edad       :integer
#  peso       :float
#  historia   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Personaje < ApplicationRecord

  has_and_belongs_to_many :peliculas
end
