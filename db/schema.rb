ActiveRecord::Schema.define(version: 2022_01_07_024457) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
