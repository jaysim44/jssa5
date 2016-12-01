class Product < ApplicationRecord
  belongs_to :category

  has_attachments :photos, maximum: 4
end
