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

ActiveRecord::Schema.define(version: 2022_09_11_214456) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "address"
    t.string "email"
    t.string "password"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.text "image_url"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_number"
    t.integer "customer_id"
    t.integer "guitar_id"
    t.string "purchase_date"
  end

end
