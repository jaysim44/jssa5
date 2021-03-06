class ProductsController < ApplicationController
  def index
    @products = Product.all
    @line_item = current_order.line_items.new
  end
  Product.includes(:photo_files).all

  def show
    @product = Product.find(params[:id])
    @line_item = current_order.line_items.new
  end
end
