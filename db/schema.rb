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

ActiveRecord::Schema.define(version: 2018_08_03_191418) do

  create_table "accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "number"
    t.integer "milestone", default: 0, null: false
    t.decimal "amount", precision: 10
    t.bigint "order_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["milestone"], name: "index_invoices_on_milestone"
    t.index ["order_id"], name: "index_invoices_on_order_id"
    t.index ["status"], name: "index_invoices_on_status"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "number"
    t.decimal "quote_amount", precision: 10
    t.decimal "amount", precision: 10
    t.bigint "sd_id"
    t.integer "category", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_orders_on_category"
    t.index ["sd_id"], name: "index_orders_on_sd_id"
  end

  create_table "sds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "number"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_sds_on_account_id"
  end

  create_table "subco_invoices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "details"
    t.string "invoice_num"
    t.decimal "amount", precision: 10
    t.bigint "subco_po_id"
    t.integer "milestone", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.integer "pv_number"
    t.integer "approval", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["approval"], name: "index_subco_invoices_on_approval"
    t.index ["milestone"], name: "index_subco_invoices_on_milestone"
    t.index ["pv_number"], name: "index_subco_invoices_on_pv_number"
    t.index ["status"], name: "index_subco_invoices_on_status"
    t.index ["subco_po_id"], name: "index_subco_invoices_on_subco_po_id"
  end

  create_table "subco_pos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.string "details"
    t.string "number"
    t.decimal "amount", precision: 10
    t.bigint "sd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sd_id"], name: "index_subco_pos_on_sd_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invoices", "orders"
  add_foreign_key "orders", "sds"
  add_foreign_key "sds", "accounts"
  add_foreign_key "subco_invoices", "subco_pos"
  add_foreign_key "subco_pos", "sds"
end
