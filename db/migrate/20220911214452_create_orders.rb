class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.integer :customer_id
      t.integer :guitar_id
      t.string :purchase_date
    end
  end
end
