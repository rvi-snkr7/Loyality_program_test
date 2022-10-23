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

ActiveRecord::Schema.define(version: 2022_10_23_035604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transaction_users", force: :cascade do |t|
    t.integer "point"
    t.bigint "user_id", null: false
    t.bigint "transaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["transaction_id"], name: "index_transaction_users_on_transaction_id"
    t.index ["user_id"], name: "index_transaction_users_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "currency"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "dob"
  end

  add_foreign_key "transaction_users", "transactions"
  add_foreign_key "transaction_users", "users"
  add_foreign_key "transactions", "users"
end
