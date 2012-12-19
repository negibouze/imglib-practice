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

ActiveRecord::Schema.define(:version => 20121217180356) do

  create_table "imgs", :force => true do |t|
    t.string   "name"
    t.string   "ctype"
    t.binary   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users_imgs", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "img_id"
  end

  add_index "users_imgs", ["img_id"], :name => "index_users_imgs_on_img_id"
  add_index "users_imgs", ["user_id"], :name => "index_users_imgs_on_user_id"

end
