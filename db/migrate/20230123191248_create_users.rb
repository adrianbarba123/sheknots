class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :phone_number
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
