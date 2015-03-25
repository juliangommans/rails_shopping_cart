class Order < ActiveRecord::Base
  has_many :users
  belongs_to :purchase
end
