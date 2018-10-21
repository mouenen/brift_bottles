# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_181_019_085_924) do
  create_table 'bottles', options: 'ENGINE=InnoDB DEFAULT CHARSET=latin1', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.text 'content'
    t.string 'location', limit: 30
    t.integer 'like_num', default: 0, null: false
    t.bigint 'user_id', null: false
    t.index ['user_id'], name: 'index_bottles_on_user_id'
    t.index ['user_id'], name: 'index_bottles_uniqueness', unique: true
  end

  create_table 'comments', options: 'ENGINE=InnoDB DEFAULT CHARSET=latin1', force: :cascade do |t|
    t.text 'content', limit: 255
    t.integer 'like_num', default: 0, null: false
    t.datetime 'created_at', null: false
    t.bigint 'user_id', null: false
    t.bigint 'bottle_id', null: false
    t.index ['bottle_id'], name: 'index_comments_on_bottle_id'
    t.index %w[user_id bottle_id], name: 'index_comments_uniqueness', unique: true
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=latin1', force: :cascade do |t|
    t.string 'name', limit: 20, default: '', null: false
    t.boolean 'sex', default: false, null: false
    t.string 'phone', limit: 11, default: '', null: false
    t.string 'address', limit: 30, default: '', null: false
    t.string 'motto', limit: 200
    t.string 'role', default: 'client', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'bottles', 'users'
  add_foreign_key 'comments', 'bottles'
  add_foreign_key 'comments', 'users'
end
