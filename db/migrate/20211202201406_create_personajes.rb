class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.string :imagen
      t.integer :edad
      t.float :peso
      t.string :historia

      t.timestamps
    end
  end
end
