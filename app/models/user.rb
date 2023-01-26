class User < ActiveRecord::Base
    #macro coming from ActiveRecord but only usable if the gem bcrypt is in the bundle
    has_secure_password #password, password=, password_confirmation, password_confirmation=, authenticate (comes with embedded password requirement)

    #validations not required
    # validates :username, presence: true, length: {in: 4..25}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i} #this doesnt need to be memorized, can be found online (email validation regex)
    validates :password, length: {in: 6..25}


    has_many :purchases
    has_many :products, through: :purchases

    def full_name
        "#{first_name} #{last_name}"
    end

    def testing
        return "Hello World!"
    end

    def purchase_product(product, quantity, final_price)
        Purchase.create(user: self, product: product, quantity: quantity, final_price: final_price)
    end

    def return_product(product)
        product.purchases.destroy_all
    end
end
