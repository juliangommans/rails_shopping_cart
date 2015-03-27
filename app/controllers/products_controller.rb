class ProductsController < ApplicationController
	before_action :authenticate_user!

  def index
    redirect_to new_user_registration_path unless user_signed_in?
    @products = Product.all
  end

  def new
  	@products = Product.new
  end

  def show
  	@product = Product.find(params[:id])
  end

  def add
  	@user = current_user
  	Order.create(user_id: @user.id) unless @user.order
  	@user.reload
		if @order = @user.order.find_by(bought: false)
			Purchase.create(product_id: params[:id], order_id: @order.id)
  	else
  		Order.create(user_id: @user.id)
  		@user.reload
  		Purchase.create(product_id: params[:id], order_id: @order.id)
  	end
  	redirect_to root_url
  end

end
