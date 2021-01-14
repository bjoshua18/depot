class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  
  def index
    count_visit
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      # SELECT products.* FROM products ORDER BY product.title ASC
      @products = Product.order(:title)
    end
  end

  def count_visit
    session[:counter] = session[:counter].nil? ? 1 : session[:counter] + 1
  end
end
