class ProductsController < ApplicationController

  def index
    #redirect_to new_user_registration_path unless user_signed_in?
    @Productts = Product.all
  end

  # def new
  # 	@products = Product.new
  # end

end
