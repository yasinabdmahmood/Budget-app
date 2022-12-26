class User < ApplicationRecord
  has_many :records, foreign_key: 'author_id'
  has_many :catagories, foreign_key: 'author_id'
end
