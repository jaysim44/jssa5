class Province < ApplicationRecord
  has_many :customers

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
