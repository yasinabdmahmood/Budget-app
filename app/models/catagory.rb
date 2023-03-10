class Catagory < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :catagory_records, dependent: :destroy

  # validations
  validates :name, presence: true
  validates :icon, presence: true
  validates :name, length: { maximum: 100 }
  validates_associated :catagory_records
end
