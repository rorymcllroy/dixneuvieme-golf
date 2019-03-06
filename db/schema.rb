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
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 2019_03_06_150626) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carsharingreviews", force: :cascade do |t|
    t.text "content"
    t.string "grade"
    t.bigint "carsharing_id"
    t.bigint "passenger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carsharing_id"], name: "index_carsharingreviews_on_carsharing_id"
    t.index ["passenger_id"], name: "index_carsharingreviews_on_passenger_id"
  end

  create_table "carsharings", force: :cascade do |t|
    t.datetime "date"
    t.integer "places"
    t.text "description"
    t.integer "price"
    t.bigint "golf_id"
    t.bigint "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_carsharings_on_driver_id"
    t.index ["golf_id"], name: "index_carsharings_on_golf_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "golfcomments", force: :cascade do |t|
    t.text "content"
    t.string "grade"
    t.bigint "golf_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["golf_id"], name: "index_golfcomments_on_golf_id"
    t.index ["user_id"], name: "index_golfcomments_on_user_id"
  end

  create_table "golves", force: :cascade do |t|
    t.string "price_range"
    t.string "lat"
    t.string "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "name"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "stripe_customer_id"
    t.bigint "passenger_id"
    t.bigint "carsharing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carsharing_id"], name: "index_passengers_on_carsharing_id"
    t.index ["passenger_id"], name: "index_passengers_on_passenger_id"
  end

  create_table "privatemessages", force: :cascade do |t|
    t.text "content"
    t.bigint "recipient_id"
    t.bigint "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_privatemessages_on_recipient_id"
    t.index ["sender_id"], name: "index_privatemessages_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id"
    t.string "first_name"
    t.string "last_name"
    t.string "golf_level"
    t.text "description"
    t.boolean "is_admin"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
