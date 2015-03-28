class UpdateOrders < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.integer :total, default: 0
  	end
  end
end
