class ProductController < ApplicationController
  def index
    @products = Product.all
  end
  has_attachment :photo
  Product.includes(:photo_files).all
end
