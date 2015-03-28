class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_total
    current_user.order.find_by(bought: false).total_conversion
  end

  def find_product
    Product.find(params[:id])
  end

  def find_order
  	current_user.order.find_by(bought: false)
  end

end
