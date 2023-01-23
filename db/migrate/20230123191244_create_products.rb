class CreateProducts < ActiveRecord::Migration[4.2]
  def change
    create_table :products do |t|

      t.string :name
      t.integer :price
      t.string :description
      t.integer :inventory

      t.timestamps null: false
    end
  end
end
