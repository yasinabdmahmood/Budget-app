class User < ApplicationRecord
  has_many :records, foreign_key: 'author_id'
  has_many :catagories, foreign_key: 'author_id'

  # validationd
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates_associated :records
  validates_associated :catagories
end
