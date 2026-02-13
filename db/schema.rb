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

ActiveRecord::Schema[8.1].define(version: 2026_02_13_030529) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pg_stat_statements"

  create_table "addtns", force: :cascade do |t|
    t.float "amount"
    t.datetime "created_at", precision: nil, null: false
    t.string "desc"
    t.integer "payment_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.boolean "spv"
    t.datetime "updated_at", precision: nil, null: false
    t.string "username"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "anisatts", force: :cascade do |t|
    t.integer "anisprog_id"
    t.boolean "att"
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "tchdetail_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "anisfeeds", force: :cascade do |t|
    t.string "bad"
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.string "good"
    t.integer "rate"
    t.integer "tchdetail_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "anisprogs", force: :cascade do |t|
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.time "end"
    t.string "lec"
    t.string "name"
    t.time "start"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "applvs", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.date "end"
    t.string "kind"
    t.date "start"
    t.string "stat"
    t.integer "taska_id"
    t.string "tchdesc"
    t.integer "teacher_id"
    t.float "tot"
    t.string "tskdesc"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.float "base_fee"
    t.string "classroom_name"
    t.datetime "created_at", precision: nil, null: false
    t.string "description"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string "address"
    t.string "collection_id"
    t.datetime "created_at", precision: nil, null: false
    t.date "end"
    t.string "name"
    t.date "start"
    t.datetime "updated_at", precision: nil, null: false
    t.index ["collection_id"], name: "index_colleges_on_collection_id", unique: true
    t.index ["name"], name: "index_colleges_on_name", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.float "base_fee"
    t.integer "college_id"
    t.datetime "created_at", precision: nil, null: false
    t.string "description"
    t.date "end"
    t.string "name"
    t.date "start"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "ekids", force: :cascade do |t|
    t.string "addr"
    t.string "admloc"
    t.text "agr"
    t.datetime "created_at", precision: nil, null: false
    t.date "dob"
    t.string "dun"
    t.integer "ekid_id"
    t.string "fage"
    t.string "fdun"
    t.string "fedu"
    t.string "femail"
    t.string "fic"
    t.string "fname"
    t.string "fph"
    t.string "fwork"
    t.string "fworktp"
    t.string "gdr"
    t.string "ic"
    t.string "infot"
    t.string "mage"
    t.string "mdun"
    t.string "medu"
    t.string "memail"
    t.string "mic"
    t.string "mmph"
    t.string "mname"
    t.string "mph"
    t.string "mwork"
    t.string "mworktp"
    t.string "name"
    t.string "phist"
    t.string "phisttp"
    t.string "pinc"
    t.string "prbot"
    t.string "prbotmed"
    t.string "prbpreg"
    t.string "prbtp"
    t.string "prefloc"
    t.string "ref"
    t.string "refloc"
    t.string "reflw"
    t.integer "sce_id"
    t.string "sib"
    t.string "stat"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "catg"
    t.string "coname"
    t.decimal "cost"
    t.datetime "created_at", precision: nil, null: false
    t.date "dt"
    t.string "kind"
    t.integer "month"
    t.string "name"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
    t.integer "year"
  end

  create_table "extras", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "name"
    t.float "price"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "anisfeed_id"
    t.integer "anisprog_id"
    t.integer "classroom_id"
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "rating"
    t.string "review"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "fotos", force: :cascade do |t|
    t.integer "applv_id"
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "ekid_id"
    t.integer "expense_id"
    t.string "foto_name"
    t.integer "kid_id"
    t.integer "parpaym_id"
    t.integer "payment_id"
    t.string "picture"
    t.integer "ptns_mmb_id"
    t.integer "taska_id"
    t.integer "tchdetail_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "kid_bills", force: :cascade do |t|
    t.integer "classroom_id"
    t.datetime "created_at", precision: nil, null: false
    t.text "extra"
    t.integer "kid_id"
    t.integer "payment_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "kid_extras", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.integer "extra_id"
    t.integer "kid_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "kids", force: :cascade do |t|
    t.string "allergy"
    t.string "alt_phone"
    t.string "arr_infam"
    t.string "birth_place"
    t.integer "classroom_id"
    t.datetime "created_at", precision: nil, null: false
    t.date "date_enter"
    t.date "dob"
    t.string "father_job"
    t.string "father_job_address"
    t.string "father_name"
    t.string "father_phone"
    t.string "fav_food"
    t.string "gender"
    t.string "hobby"
    t.string "ic_1"
    t.string "ic_2"
    t.string "ic_3"
    t.string "income"
    t.string "mother_job"
    t.string "mother_job_address"
    t.string "mother_name"
    t.string "mother_phone"
    t.string "name"
    t.string "panel_clinic"
    t.integer "parent_id"
    t.string "ph_1"
    t.string "ph_2"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "kidtsks", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.integer "kid_id"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "otkids", force: :cascade do |t|
    t.float "amt"
    t.datetime "created_at", precision: nil, null: false
    t.string "descotk"
    t.integer "kid_id"
    t.integer "payment_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "owner_colleges", force: :cascade do |t|
    t.integer "college_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "owner_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.datetime "updated_at", precision: nil, null: false
    t.string "username"
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
    t.index ["username"], name: "index_owners_on_username", unique: true
  end

  create_table "parents", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.datetime "updated_at", precision: nil, null: false
    t.string "username"
    t.index ["email"], name: "index_parents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true
    t.index ["username"], name: "index_parents_on_username", unique: true
  end

  create_table "parpayms", force: :cascade do |t|
    t.float "amt"
    t.datetime "created_at", precision: nil, null: false
    t.string "kind"
    t.string "mtd"
    t.integer "payment_id"
    t.date "upd"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "payinfos", force: :cascade do |t|
    t.float "alwnc"
    t.float "amt"
    t.datetime "created_at", precision: nil, null: false
    t.float "epf"
    t.float "epfa"
    t.float "sip"
    t.float "sipa"
    t.float "socs"
    t.float "socsa"
    t.integer "taska_id"
    t.integer "teacher_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float "amount"
    t.string "bill_id"
    t.integer "bill_month"
    t.integer "bill_year"
    t.string "cltid"
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.string "description"
    t.float "discount"
    t.integer "kid_id"
    t.string "mtd"
    t.string "name"
    t.boolean "paid"
    t.integer "parent_id"
    t.boolean "reminder"
    t.string "state"
    t.integer "taska_id"
    t.integer "teacher_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "payslips", force: :cascade do |t|
    t.float "addtn"
    t.float "alwnc"
    t.float "amt"
    t.float "amtepfa"
    t.datetime "created_at", precision: nil, null: false
    t.float "dedc"
    t.string "desc"
    t.string "descdc"
    t.float "epf"
    t.float "epfa"
    t.integer "mth"
    t.integer "notf"
    t.string "psl_id"
    t.float "sip"
    t.float "sipa"
    t.float "socs"
    t.float "socsa"
    t.integer "taska_id"
    t.integer "teacher_id"
    t.datetime "updated_at", precision: nil, null: false
    t.integer "year"
  end

  create_table "perproges", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.integer "perse_id"
    t.integer "proge_id"
    t.string "stat"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "perses", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "dob"
    t.string "dun"
    t.string "gdr"
    t.string "ic"
    t.string "inc"
    t.string "name"
    t.string "ph"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "pkids", force: :cascade do |t|
    t.text "addfo"
    t.text "agr"
    t.text "birth"
    t.datetime "created_at", precision: nil, null: false
    t.text "devkid"
    t.integer "ekid_id"
    t.text "grow"
    t.text "health"
    t.text "physpch"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "prntdetails", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.datetime "created_at", precision: nil, null: false
    t.string "ic_1"
    t.string "ic_2"
    t.string "ic_3"
    t.string "name"
    t.integer "parent_id"
    t.string "phone_1"
    t.string "phone_2"
    t.string "postcode"
    t.string "states"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "proges", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.date "date"
    t.time "end"
    t.string "name"
    t.time "start"
    t.datetime "updated_at", precision: nil, null: false
    t.string "venue"
  end

  create_table "ptns_mmbs", force: :cascade do |t|
    t.string "add1"
    t.string "add2"
    t.string "city"
    t.datetime "created_at", precision: nil, null: false
    t.date "dob"
    t.string "edu"
    t.string "email"
    t.date "expire"
    t.string "ic1"
    t.string "ic2"
    t.string "ic3"
    t.string "icf"
    t.string "mmb"
    t.string "mmbid"
    t.string "name"
    t.string "ph1"
    t.string "ph2"
    t.string "postcode"
    t.string "state"
    t.string "tp"
    t.string "ts_add1"
    t.string "ts_add2"
    t.string "ts_city"
    t.string "ts_job"
    t.string "ts_name"
    t.string "ts_owner"
    t.string "ts_ph1"
    t.string "ts_ph2"
    t.string "ts_postcode"
    t.string "ts_state"
    t.string "ts_status"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "ptnssps", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.string "name"
    t.string "opp"
    t.string "strgh"
    t.string "thr"
    t.datetime "updated_at", precision: nil, null: false
    t.string "wkns"
  end

  create_table "sces", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "date", precision: nil
    t.string "loc"
    t.string "name"
    t.datetime "updated_at", precision: nil, null: false
    t.string "venue"
  end

  create_table "siblings", force: :cascade do |t|
    t.bigint "beradik_id"
    t.datetime "created_at", precision: nil, null: false
    t.bigint "kid_id"
    t.datetime "updated_at", precision: nil, null: false
    t.index ["beradik_id"], name: "index_siblings_on_beradik_id"
    t.index ["kid_id"], name: "index_siblings_on_kid_id"
  end

  create_table "skids", force: :cascade do |t|
    t.string "adap"
    t.string "cog"
    t.string "comm"
    t.datetime "created_at", precision: nil, null: false
    t.string "dely"
    t.string "delydesc"
    t.integer "ekid_id"
    t.string "otnt"
    t.string "phy"
    t.string "reflt"
    t.string "soc"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "taska_admins", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "taska_id"
  end

  create_table "taska_teachers", force: :cascade do |t|
    t.boolean "stat"
    t.integer "taska_id"
    t.integer "teacher_id"
  end

  create_table "taskas", force: :cascade do |t|
    t.string "acc_name"
    t.string "acc_no"
    t.string "address_1"
    t.string "address_2"
    t.string "bank_name"
    t.string "bank_status"
    t.string "billplz_reg"
    t.float "booking"
    t.string "city"
    t.string "collection_id"
    t.string "collection_id2"
    t.datetime "created_at", precision: nil, null: false
    t.float "discount"
    t.string "email"
    t.datetime "expire", precision: nil
    t.string "name"
    t.string "phone_1"
    t.string "phone_2"
    t.string "plan"
    t.string "postcode"
    t.string "ssm_no"
    t.string "states"
    t.string "subdomain"
    t.string "supervisor"
    t.datetime "updated_at", precision: nil, null: false
    t.index ["subdomain"], name: "index_taskas_on_subdomain", unique: true
  end

  create_table "tchdetail_colleges", force: :cascade do |t|
    t.integer "college_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "tchdetail_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "tchdetails", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "anis"
    t.string "category"
    t.string "city"
    t.integer "college_id"
    t.datetime "created_at", precision: nil, null: false
    t.date "dob"
    t.string "dun"
    t.string "education"
    t.string "email"
    t.string "gender"
    t.string "ic_1"
    t.string "ic_2"
    t.string "ic_3"
    t.string "income"
    t.string "jkm"
    t.string "marital"
    t.string "name"
    t.string "phone_1"
    t.string "phone_2"
    t.string "post"
    t.string "postcode"
    t.string "states"
    t.integer "teacher_id"
    t.string "ts_address_1"
    t.string "ts_address_2"
    t.string "ts_city"
    t.string "ts_name"
    t.string "ts_owner_name"
    t.string "ts_phone_1"
    t.string "ts_phone_2"
    t.string "ts_postcode"
    t.string "ts_states"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "tchlvs", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.float "day"
    t.string "name"
    t.integer "taska_id"
    t.integer "teacher_id"
    t.integer "tsklv_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "teacher_colleges", force: :cascade do |t|
    t.integer "college_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "teacher_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.integer "course_id"
    t.datetime "created_at", precision: nil, null: false
    t.integer "teacher_id"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "confirmation_sent_at", precision: nil
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.string "unconfirmed_email"
    t.datetime "updated_at", precision: nil, null: false
    t.string "username"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
    t.index ["username"], name: "index_teachers_on_username", unique: true
  end

  create_table "teachers_classrooms", force: :cascade do |t|
    t.integer "classroom_id"
    t.integer "teacher_id"
  end

  create_table "tskbills", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.float "disc"
    t.integer "payment_id"
    t.float "real"
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "tsklvs", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.integer "day"
    t.string "desc"
    t.string "name"
    t.integer "taska_id"
    t.datetime "updated_at", precision: nil, null: false
  end
end
