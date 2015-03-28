class ProductsController < ApplicationController
	before_action :authenticate_user!

  def index
    redirect_to new_user_registration_path unless user_signed_in?
    @products = Product.all
    @total = find_total
  end

  def new
  	@products = Product.new
  end

  def show
  	@product = find_product
    @total = find_total
  end

  def add
  	@user = current_user
  	find_product.current_order(@user)
  	redirect_to root_url
  end


end
