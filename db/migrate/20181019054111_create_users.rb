# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 20, default: ''
      t.boolean :sex, null: false, default: false
      t.string :phone, null: false, limit: 11, default: ''
      t.string :address, null: false, limit: 30, default: ''
      t.string :motto, null: true, limit: 200
      t.string :role, null: false, default: 'client'
    end
  end
end
