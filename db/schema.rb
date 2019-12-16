# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_16_134835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_contribution_supplies", force: :cascade do |t|
    t.bigint "campaign_supply_id", null: false
    t.bigint "campaign_contribution_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_contribution_id"], name: "index_camp_cont_supl_camp_contr"
    t.index ["campaign_supply_id"], name: "index_campaign_contribution_supplies_on_campaign_supply_id"
  end

  create_table "campaign_contributions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "campaign_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_id"], name: "index_campaign_contributions_on_campaign_id"
    t.index ["user_id"], name: "index_campaign_contributions_on_user_id"
  end

  create_table "campaign_supplies", force: :cascade do |t|
    t.bigint "supply_id", null: false
    t.bigint "campaign_id", null: false
    t.integer "quantity_needed"
    t.integer "quantity_supplied"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_id"], name: "index_campaign_supplies_on_campaign_id"
    t.index ["supply_id"], name: "index_campaign_supplies_on_supply_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.datetime "end_datetime"
    t.integer "completion"
    t.bigint "corporation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["corporation_id"], name: "index_campaigns_on_corporation_id"
  end

  create_table "corporations", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["latitude"], name: "index_corporations_on_latitude"
    t.index ["longitude"], name: "index_corporations_on_longitude"
  end

  create_table "fires", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "campaign_contribution_supplies", "campaign_contributions"
  add_foreign_key "campaign_contribution_supplies", "campaign_supplies"
  add_foreign_key "campaign_contributions", "campaigns"
  add_foreign_key "campaign_contributions", "users"
  add_foreign_key "campaign_supplies", "campaigns"
  add_foreign_key "campaign_supplies", "supplies"
  add_foreign_key "campaigns", "corporations"
end
