class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :order
      t.belongs_to :product

      t.timestamps
    end
  end
end
