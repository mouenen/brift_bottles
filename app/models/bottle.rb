class Bottle < ApplicationRecord
    
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy

  validates :content, presence: true, length: { maximum: 400 }
end
