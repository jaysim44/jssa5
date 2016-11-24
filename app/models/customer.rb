class Customer < ApplicationRecord
  belongs_to :province

  validates :name, presence: true
end
