class ProductsController < ApplicationController

  # GET: /products
  get "/products" do
  ##  erb :"/products/index.html" REMOVING ALL ERB TAGS SINCE EVERYTHING WILL BE DISPLAYED WITH REACT
    if params[:order]
      Product.order_by(params[:order]).to_json(include: [:purchases])
    else
    Product.all.to_json(include: [:purchases])
    
    end
  end

  get"/products/:id/purchases" do

  end

  # POST: /products
  post "/products" do
    product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],        #should include all params to be precise
      front_image: params[:front_image],
      back_image: params[:back_image]
      )
    if product.id
      halt 201, {product: product}.to_json #halt 201 means something was created successfully
    else
      halt 400, {message: product.errors.full_messages.to_sentence}.to_json
    end
  end

  # GET: /products/5
  get "/products/:id" do
    
  end

  # PATCH: /products/5
  patch "/products/:id" do
    
  end

  # DELETE: /products/5
  delete "/products/:id" do
    
  end
end
