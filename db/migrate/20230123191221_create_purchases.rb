class CreatePurchases < ActiveRecord::Migration[4.2]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.integer :final_price

      t.timestamps null: false
    end
  end
end
