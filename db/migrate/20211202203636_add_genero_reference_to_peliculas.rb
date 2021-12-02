class AddGeneroReferenceToPeliculas < ActiveRecord::Migration[6.1]
  def change
    add_reference :peliculas, :genero, foreign_key: true
  end
end
