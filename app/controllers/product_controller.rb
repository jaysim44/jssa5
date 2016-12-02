class ProductController < ApplicationController
  def inded
    @products = Product.all
  end
end
