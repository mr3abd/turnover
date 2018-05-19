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

ActiveRecord::Schema.define(version: 20180519021615) do

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "promocodes", force: :cascade do |t|
    t.string "code"
    t.integer "credit"
    t.integer "limitations_use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promocodes_users", id: false, force: :cascade do |t|
    t.integer "promocode_id", null: false
    t.integer "user_id", null: false
    t.index ["promocode_id", "user_id"], name: "index_promocodes_users_on_promocode_id_and_user_id"
    t.index ["user_id", "promocode_id"], name: "index_promocodes_users_on_user_id_and_promocode_id"
  end

  create_table "turnovers", force: :cascade do |t|
    t.string "name_company"
    t.string "position"
    t.decimal "sallary_left"
    t.decimal "sallart_newer"
    t.decimal "years_lefter"
    t.decimal "sallary_manger"
    t.decimal "daily_hourly"
    t.decimal "agancey_cost"
    t.decimal "ads_cost"
    t.decimal "spentHR_timeH"
    t.decimal "spentHR_timeD"
    t.decimal "sallary_HR"
    t.decimal "onespentinterview_timeH"
    t.decimal "onespentinterview_timeD"
    t.decimal "oneSallary_interviewer"
    t.decimal "twoSpentinterview_timeH"
    t.decimal "twoSpentinterviewD"
    t.decimal "twoSallary_interviewer"
    t.decimal "threeSpentinterview_timeH"
    t.decimal "threeSpentinterview_timeD"
    t.decimal "threeSallary_interviewer"
    t.decimal "oneSpentAdmin_timeH"
    t.decimal "oneSpentAdmin_timeD"
    t.decimal "oneSallary_admin"
    t.decimal "twoSpentAdmin_timeH"
    t.decimal "twoSpentAdmin_timeD"
    t.decimal "twoSallary_admin"
    t.decimal "threeSpentAdmin_timeH"
    t.decimal "threeSpentAdmin_timeD"
    t.decimal "threeSallary_admin"
    t.decimal "spentSupervisor_timeH"
    t.decimal "spentSupervisor_timeD"
    t.decimal "spentEmployee_timeH"
    t.decimal "spentEmployee_timeD"
    t.decimal "spentadapt_timeH"
    t.decimal "spentadapt_timeD"
    t.decimal "Sallary_adapt"
    t.decimal "spenttrain_timeH"
    t.decimal "spenttrain_timeD"
    t.decimal "sallary_trainer"
    t.decimal "spentprocess_timeH"
    t.decimal "spentprocess_timeD"
    t.decimal "sallary_adminprocess"
    t.decimal "spentRotenlefter_timeH"
    t.decimal "spentRotenLefter_timeD"
    t.decimal "sallary_adminRotenlefter"
    t.decimal "balanceLeavDay_timeH"
    t.decimal "balanceLeavDay_timeD"
    t.decimal "Remaing_medical"
    t.decimal "indemnity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "sallarysupervisor"
    t.decimal "CostEads"
    t.decimal "Eaa"
    t.decimal "costhire"
    t.decimal "Eba"
    t.decimal "Ebab"
    t.decimal "Ebac"
    t.decimal "costadmin"
    t.decimal "Eca"
    t.decimal "Ecb"
    t.decimal "Ecc"
    t.decimal "costmagment"
    t.decimal "ma"
    t.decimal "costadapt"
    t.decimal "aa"
    t.decimal "ab"
    t.decimal "ac"
    t.decimal "loscontract"
    t.decimal "lca"
    t.decimal "lcb"
    t.decimal "lcc"
    t.decimal "indirect_cost"
    t.decimal "turnover_ratio"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
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
    t.integer "credit"
    t.string "name"
    t.string "name_company"
    t.string "activity"
    t.string "city"
    t.integer "workers"
    t.string "name_manger_acc"
    t.string "jobpostion"
    t.string "phone"
    t.integer "gender_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
