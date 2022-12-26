class Record < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :catagory_records, dependent: :destroy
  has_many :catagories, through: :catagory_record

  # validations
  validates :name, presence: true
  validates :amount, presence: true
  validates :amount, numericality: true
  validates :amount, numericality: { greater_than: 0 }
  validates :name, length: { maximum: 100 }
  validates_associated :catagory_records
end
