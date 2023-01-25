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
