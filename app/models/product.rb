class Product < ActiveRecord::Base
  belongs_to :purchase

  def pretty_price
   "$ " + (self.price/100.0).to_s
  end

  def current_order(user)
  	Order.create(user_id: user.id) unless user.order
  	user.reload
  	if order = user.order.find_by(bought: false)
  		Purchase.create(product_id: self.id, order_id: order.id)
  	else
  		order = Order.create(user_id: user.id)
  		user.reload
  		Purchase.create(product_id: self.id, order_id: order.id)
  	end
  end

end
