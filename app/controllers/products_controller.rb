class ProductsController < ApplicationController
	before_action :authenticate_user!

  def index
    redirect_to new_user_registration_path unless user_signed_in?
    @products = Product.all
  end

  def new
  	@products = Product.new
  end

end
