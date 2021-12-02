# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_02_202722) do

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.string "imagen"
    t.integer "calificacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "peliculas_personajes", id: false, force: :cascade do |t|
    t.integer "personaje_id", null: false
    t.integer "pelicula_id", null: false
  end

  create_table "personajes", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.integer "edad"
    t.float "peso"
    t.string "historia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
