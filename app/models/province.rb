class Province < ApplicationRecord
  has_many :customers

  validates :name, presence: true
  validates :pst, presence: true
  validates :gst, presence: true
  validates :hst, presence: true
end
