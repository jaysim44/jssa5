class User < ApplicationRecord
  belongs_to :customer

  validates :username, presence: true
end
