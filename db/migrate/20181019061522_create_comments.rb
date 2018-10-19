class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content, null: true, limit: 100
      t.integer :like_num, null: false, default: 0
      t.datetime :created_at, null: false

      t.references :user, null: false # t.references :user = t.integer :user_id
      t.references :bottle, null: false # t.references :bottle = t.integer :bottle_id

      t.index %i[user_id bottle_id], name: 'index_comments_uniqueness', unique: true
    end
    add_foreign_key 'comments', 'users'
    add_foreign_key 'comments', 'bottles'
  end
end
