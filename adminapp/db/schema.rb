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

ActiveRecord::Schema.define(version: 2018_08_20_052609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "nam_category"
    t.string "desc_category"
    t.integer "id_material"
    t.integer "id_multimedia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string "nam_"
    t.string "environment"
    t.string "desc_"
    t.integer "id_multimedia"
    t.integer "id_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_types", force: :cascade do |t|
    t.string "nam_material_type"
    t.string "desc_material_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "nam_material"
    t.string "desc_material"
    t.integer "id_material_type"
    t.bigint "material_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_type_id"], name: "index_materials_on_material_type_id"
  end

  create_table "multimedia", force: :cascade do |t|
    t.string "nam_multimedia"
    t.string "desc_multimedia"
    t.integer "id_multimedia_type"
    t.bigint "multimedia_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multimedia_type_id"], name: "index_multimedia_on_multimedia_type_id"
  end

  create_table "multimedia_types", force: :cascade do |t|
    t.string "nam_multimedia_type"
    t.string "desc_multimedia_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recycling_centers", force: :cascade do |t|
    t.string "nam_recycling_center"
    t.string "desc_recycling_center"
    t.string "address_recycling_center"
    t.string "tel_recycling_center"
    t.string "web_recycling_center"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nam_role"
    t.string "desc_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transport_materials", force: :cascade do |t|
    t.string "nam_transport_material"
    t.string "desc_transport_material"
    t.date "date_transport_material"
    t.integer "id_material"
    t.integer "id_recycling_center"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nam1_user"
    t.string "nam2_user"
    t.string "lastnam1_user"
    t.string "lastnam2_user"
    t.string "tel_user"
    t.string "address_user"
    t.string "identification_user"
    t.string "email_user"
    t.string "password"
    t.date "date_user"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "uses", force: :cascade do |t|
    t.string "nam_use"
    t.string "desc_"
    t.string "use"
    t.integer "id_material"
    t.integer "id_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.string "nam_visit"
    t.string "desc_"
    t.string "visit"
    t.integer "id_recycling_center"
    t.integer "id_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "materials", "material_types"
  add_foreign_key "multimedia", "multimedia_types"
  add_foreign_key "users", "roles"
end
