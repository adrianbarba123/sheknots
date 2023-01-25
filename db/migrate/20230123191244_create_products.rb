class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.string :name
      t.integer :price
      t.string :description
      t.integer :inventory
      t.boolean :discount
      t.string :front_image
      t.string :back_image

      t.timestamps null: false
    end
  end
end
