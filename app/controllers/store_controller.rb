class StoreController < ApplicationController
  def index
    # SELECT products.* FROM products ORDER BY product.title ASC
    @products = Product.order(:title)
  end
end
