# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130611015120) do

  create_table "apuesta", :force => true do |t|
    t.integer  "idapuesta"
    t.integer  "idtipoapuesta"
    t.integer  "idcarrera"
    t.integer  "montoapuesta"
    t.integer  "montopagado"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end
=======
ActiveRecord::Schema.define(:version => 20130611020200) do
>>>>>>> 766b166fe2288c3d098ed21cd8a0316a3d1b21fd

  create_table "caballos", :force => true do |t|
    t.string   "nombre"
    t.integer  "ratio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "caballoxcarerras", :force => true do |t|
    t.integer  "idcarrera"
    t.integer  "idcaballo"
    t.integer  "puesto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "carreras", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
