class Order < ActiveRecord::Base
  belongs_to :users
  belongs_to :purchase

  def total_conversion
  	items = Purchase.where(order_id: self.id)
  	total_price = 0
  	items.each { |item| total_price +=  Product.find_by(id: item.product_id).price}
  	self.total = total_price/100.0
  end


end
