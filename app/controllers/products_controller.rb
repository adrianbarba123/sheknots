class ProductsController < ApplicationController

  # GET: /products
  get "/products" do
  ##  erb :"/products/index.html" REMOVING ALL ERB TAGS SINCE EVERYTHING WILL BE DISPLAYED WITH REACT
    Product.all.to_json
  end

  # POST: /products
  post "/products" do
    
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
