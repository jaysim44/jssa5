class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  attr_writer :remove_photo

  def remove_photo
    @remove_photo || false
  end



  before_validation { self.photo.clear if self.remove_photo == '1' }

  has_attachment :photo

  validates :name, uniqueness: true
  validates :name, :description, :size, :stock, :price, presence: true
  validates :stock, numericality: { only_integer: true }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  mount_uploader :photo, PhotoUploader
  default_scope { where(active: true)}
end
