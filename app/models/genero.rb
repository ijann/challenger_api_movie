# == Schema Information
#
# Table name: generos
#
#  id         :integer          not null, primary key
#  nombre     :string
#  imagen     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genero < ApplicationRecord
end
