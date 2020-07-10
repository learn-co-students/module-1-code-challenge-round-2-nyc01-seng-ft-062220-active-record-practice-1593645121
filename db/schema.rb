ActiveRecord::Schema.define(version: 2020_07_06_154524) do

  create_table "calls", force: :cascade do |t|
    t.integer "specialist_id"
    t.integer "employee_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
  end

  create_table "manager_employees", force: :cascade do |t|
    t.integer "manager_id"
    t.integer "employee_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
  end

  create_table "specialists", force: :cascade do |t|
    t.string "name"
  end

end
