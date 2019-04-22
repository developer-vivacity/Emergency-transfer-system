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

ActiveRecord::Schema.define(version: 2019_04_22_094253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admissions", force: :cascade do |t|
    t.datetime "moment"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_admissions_on_patient_id"
  end

  create_table "allergies", force: :cascade do |t|
    t.text "description"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_allergies_on_patient_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "coding_system"
    t.string "code"
    t.text "description"
    t.bigint "patient_id"
    t.bigint "patient_condition_id"
    t.bigint "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_diagnoses_on_admission_id"
    t.index ["patient_condition_id"], name: "index_diagnoses_on_patient_condition_id"
    t.index ["patient_id"], name: "index_diagnoses_on_patient_id"
  end

  create_table "diagnostic_procedures", force: :cascade do |t|
    t.text "description"
    t.datetime "moment"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_diagnostic_procedures_on_patient_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frequency_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mass_units", force: :cascade do |t|
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medication_orders", force: :cascade do |t|
    t.string "name"
    t.decimal "unit"
    t.decimal "dosage"
    t.integer "route"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_medication_orders_on_patient_id"
  end

  create_table "medication_routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.text "description"
    t.datetime "moment"
    t.bigint "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_observations_on_admission_id"
  end

  create_table "order_frequencies", force: :cascade do |t|
    t.string "value"
    t.integer "unit"
    t.bigint "medication_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medication_order_id"], name: "index_order_frequencies_on_medication_order_id"
  end

  create_table "patient_treatments", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "allergies_id"
    t.integer "diagnosis_id"
    t.integer "diagnostic_procedure_id"
    t.integer "facilities_id"
    t.integer "observation_id"
    t.integer "symptoms_id"
    t.integer "treatment_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "mr"
    t.datetime "dob"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "allergies_id"
    t.integer "dygnosis_id"
    t.integer "dygnosis_procedure_id"
    t.integer "medications_id"
    t.integer "treatments_id"
    t.text "admission_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.text "description"
    t.bigint "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_symptoms_on_admission_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.text "description"
    t.text "necessity"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_treatments_on_patient_id"
  end

end
