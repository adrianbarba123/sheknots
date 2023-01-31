class PurchasesController < ApplicationController

  # GET: /purchases
  get "/purchases" do
    Purchase.all.to_json
   
  end

  # POST: /purchases
  post "/products" do
    product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],        #should include all params to be precise
      front_image: params[:front_image],
      back_image: params[:back_image]
      )
    if product.id
      halt 201, {product: product}.to_json #halt 201 means something was created successfully
    else
      halt 400, {message: product.errors.full_messages.to_sentence}.to_json
    end
  end

  post "/purchases" do
    current_user = User.find_by_id(session[:user_id])
    if current_user.nil?
      halt 401, {message: 'User is not logged in'}.to_json
    end
    purchased_product = current_user.purchase_product(params[:product_id])
    if purchased_product.id
      halt 201, {message: 'User successfully purchased the product'}.to_json
    else
      halt 400, {message: 'Error purchasing product'}.to_json
    end
  end

  # GET: /purchases/5
  get "/purchases/:id" do
    
  end

  # PATCH: /purchases/5
  patch "/purchases/:id" do
    
  end

  # DELETE: /purchases/5
  delete "/purchases/:id" do
    
  end
end
