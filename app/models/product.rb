class Product < ActiveRecord::Base
  belongs_to :purchase

  def self.current_order

  end

end
