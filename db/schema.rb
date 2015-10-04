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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151004125102) do

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "razon_social",        limit: 255
    t.string   "rut",                 limit: 255
    t.string   "img_url",             limit: 255
    t.string   "email",               limit: 255
    t.string   "giro",                limit: 255
    t.string   "direccion",           limit: 255
    t.string   "comuna",              limit: 255
    t.string   "coordenadas",         limit: 255
    t.text     "descripcion",         limit: 65535
  end

  create_table "company_tags", force: :cascade do |t|
    t.integer  "tag_id",     limit: 4
    t.integer  "company_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "company_tags", ["company_id"], name: "index_company_tags_on_company_id", using: :btree
  add_index "company_tags", ["tag_id"], name: "index_company_tags_on_tag_id", using: :btree

  create_table "notices", force: :cascade do |t|
    t.string   "actions",    limit: 255
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "product",     limit: 255
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "project_tags", force: :cascade do |t|
    t.integer  "project_id", limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "project_tags", ["project_id"], name: "index_project_tags_on_project_id", using: :btree
  add_index "project_tags", ["tag_id"], name: "index_project_tags_on_tag_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.text     "description",         limit: 65535
    t.integer  "investment",          limit: 4
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "user_id",             limit: 4
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "lastname",               limit: 255
    t.string   "phone",                  limit: 255
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "company_tags", "companies"
  add_foreign_key "company_tags", "tags"
  add_foreign_key "project_tags", "projects"
  add_foreign_key "project_tags", "tags"
  add_foreign_key "projects", "users"
end
