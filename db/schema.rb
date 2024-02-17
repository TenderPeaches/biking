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

ActiveRecord::Schema[7.0].define(version: 2024_02_13_140949) do
  create_table "bicycle_part_models", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_bicycle_part_models_on_brand_id"
  end

  create_table "bicycle_part_types", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "bicycle_part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_part_id"], name: "index_bicycle_part_types_on_bicycle_part_id"
  end

  create_table "bicycle_parts", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "bicycle_system_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_system_id"], name: "index_bicycle_parts_on_bicycle_system_id"
  end

  create_table "bicycle_systems", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_step_considerations", force: :cascade do |t|
    t.string "condition"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_step_tools", force: :cascade do |t|
    t.integer "tool_id", null: false
    t.integer "job_step_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_step_id"], name: "index_job_step_tools_on_job_step_id"
    t.index ["tool_id"], name: "index_job_step_tools_on_tool_id"
  end

  create_table "job_steps", force: :cascade do |t|
    t.string "label"
    t.integer "number"
    t.string "description"
    t.integer "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_steps_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "label", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tool_types", force: :cascade do |t|
    t.string "label"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "specification"
    t.string "identifier"
    t.integer "tool_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_type_id"], name: "index_tools_on_tool_type_id"
  end

  add_foreign_key "bicycle_part_models", "brands"
  add_foreign_key "bicycle_part_types", "bicycle_parts"
  add_foreign_key "bicycle_parts", "bicycle_systems"
  add_foreign_key "job_step_tools", "job_steps"
  add_foreign_key "job_step_tools", "tools"
  add_foreign_key "job_steps", "jobs"
  add_foreign_key "tools", "tool_types"
end
