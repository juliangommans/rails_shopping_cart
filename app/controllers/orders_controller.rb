class OrdersController < ApplicationController

	def index
		@total = find_total
		@products = []
		purchases = Purchase.where(order_id: find_order.id)
		purchases.each {|item| @products << Product.find(item.product_id) }
		@total = find_total
	end

	def purchase
		buyout = find_order
		buyout.bought = true
		Order.create(user_id: current_user.id)
		redirect_to show_cart_path
	end

	def total

	end
end
