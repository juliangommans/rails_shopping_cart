class AddBooleanToOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.boolean :bought, default: false
    end
  end
end
