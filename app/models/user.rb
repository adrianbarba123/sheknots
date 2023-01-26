class User < ActiveRecord::Base
    has_many :purchases
    has_many :products, through: :purchases

    def full_name
        "#{first_name} #{last_name}"
    end

    def testing
        return "hello Workd"
    end

    def purchase_product(product, quantity, final_price)
        Purchase.create(user: self, product: product, quantity: quantity, final_price: final_price)
    end

    def return_product(product)
        product.purchases.destroy_all
    end
end
