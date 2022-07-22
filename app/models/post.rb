class Post < ApplicationRecord
  belongs_to :desinger
  has_many :comments
  validates :titel, presence: true
  validates :text, presence: true
      
end
