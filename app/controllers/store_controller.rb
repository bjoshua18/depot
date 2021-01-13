class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  
  def index
    count_visit
    # SELECT products.* FROM products ORDER BY product.title ASC
    @products = Product.order(:title)
  end

  def count_visit
    session[:counter] = session[:counter].nil? ? 1 : session[:counter] + 1
  end
end
