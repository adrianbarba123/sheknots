class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :products
      t.integer :price
      t.string :desc
      t.integer :inventory

      t.timestamps null: false
    end
  end
end
