class Record < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :catagory_records, dependent: :destroy
  has_many :catagories, through: :catagory_records
end
