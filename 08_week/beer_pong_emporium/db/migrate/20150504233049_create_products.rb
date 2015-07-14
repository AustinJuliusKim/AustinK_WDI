class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.float :wholesale_price
      t.text :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
