class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :image_url
    end
  end
end
