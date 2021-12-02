class CreateJoinTablePersonajesPeliculas < ActiveRecord::Migration[6.1]
  def change
    create_join_table :personajes, :peliculas do |t|
      # t.index [:personaje_id, :pelicula_id]
      # t.index [:pelicula_id, :personaje_id]
    end
  end
end
