class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :product
      t.integer :quantity
      t.integer :final_price

      t.timestamps null: false
    end
  end
end
