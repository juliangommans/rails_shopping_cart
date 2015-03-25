class Purchase < ActiveRecord::Base
  has_many :products, :orders
end
