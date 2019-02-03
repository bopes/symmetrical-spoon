class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :restaurant
      t.string :order
      t.integer :customer

      t.timestamps
    end
  end
end
