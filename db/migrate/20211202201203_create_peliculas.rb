class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.string :imagen
      t.integer :calificacion

      t.timestamps
    end
  end
end
