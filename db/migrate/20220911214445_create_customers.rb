class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.string :email
      t.string :password
    end
  end
end
