# frozen_string_literal: true

class CreateBottles < ActiveRecord::Migration[5.2]
  def change
    create_table :bottles do |t|
      t.datetime :created_at, null: false
      t.text :content, null: true, limit: 400
      t.string :location, null: true, limit: 30
      t.integer :like_num, null: false, default: 0

      t.references :user, null: false # t.references :user = t.integer :user_id

      t.index %i[user_id], name: 'index_bottles_uniqueness', unique: true
    end
    add_foreign_key 'bottles', 'users'
  end
end
