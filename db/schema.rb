# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130415004722) do

  create_table "budgets", :force => true do |t|
    t.decimal  "amount"
    t.date     "starts_on"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "budgets", ["department_id"], :name => "index_budgets_on_department_id"

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expenses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "amount"
    t.integer  "partida_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "expenses", ["partida_id"], :name => "index_expenses_on_partida_id"

  create_table "partidas", :force => true do |t|
    t.string   "name"
    t.decimal  "amount_assigned"
    t.decimal  "amount_aviable"
    t.integer  "budget_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "partidas", ["budget_id"], :name => "index_partidas_on_budget_id"

end
