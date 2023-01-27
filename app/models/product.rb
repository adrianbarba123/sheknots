class Product < ActiveRecord::Base
    has_many :purchases
    has_many :users, through: :purchases

    def self.order_by(attr)
        self.order("#{attr} DESC")
    end
end
