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

ActiveRecord::Schema.define(version: 2020_02_08_011151) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "telno"
    t.string "mail_address"
    t.string "store_address"
    t.string "access_info"
    t.time "business_hour_start"
    t.time "business_hour_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "company_settlement_methods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "settlement_method_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_settlement_methods_on_company_id"
    t.index ["settlement_method_id"], name: "index_company_settlement_methods_on_settlement_method_id"
  end

  create_table "goods_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "main_category"
    t.string "detail_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_sell_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "company_id"
    t.integer "request_type"
    t.date "sell_start_date"
    t.date "sell_end_date"
    t.string "mistake_reason"
    t.string "coupon_title"
    t.date "coupon_start_date"
    t.date "coupon_end_date"
    t.text "coupon_content"
    t.string "coupon_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sell_goods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "goods_name"
    t.string "goods_type"
    t.integer "price"
    t.text "sells_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_sell_info_id"
  end

  create_table "settlement_methods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "company_settlement_methods", "companies"
  add_foreign_key "company_settlement_methods", "settlement_methods"
end
