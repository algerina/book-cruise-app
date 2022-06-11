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

ActiveRecord::Schema[7.0].define(version: 20_220_611_194_739) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'reservations', force: :cascade do |t|
    t.date 'start_date'
    t.date 'end_date'
    t.decimal 'cost'
    t.string 'city'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id', null: false
    t.bigint 'yacht_id', null: false
    t.index ['user_id'], name: 'index_reservations_on_user_id'
    t.index ['yacht_id'], name: 'index_reservations_on_yacht_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'yachts', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.decimal 'price'
    t.string 'image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'reservations', 'users'
  add_foreign_key 'reservations', 'yachts'
end
