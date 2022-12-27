class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :records, foreign_key: 'author_id'
  has_many :catagories, foreign_key: 'author_id'

  # validations
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates_associated :records
  validates_associated :catagories
end
