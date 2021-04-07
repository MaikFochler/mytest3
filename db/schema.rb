ActiveRecord::Schema.define(version: 2021_03_10_170025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "bandname", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.string "encrypted_password", default: ""
    t.string "name"
    t.string "instrument"
    t.string "n1"
    t.string "n2"
    t.string "n3"
    t.date "since"
    t.date "until"
    t.boolean "activ"
    t.string "email"
    t.string "memberright"
    t.string "report"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "setlists", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.string "setname"
    t.string "setlocation"
    t.date "setdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

   create_table "titles", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.string "titel"
    t.string "interpret"
    t.string "tone"
    t.string "othertone"
    t.integer "bpm"
    t.time "duration"
    t.boolean "activ"
    t.string "thelink"
    t.string "music"
    t.string "notes"
    t.string "start_as"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "settitels", force: :cascade do |t|
    t.bigint "setlist_id"
    t.bigint "title_id"
    t.integer "round"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
