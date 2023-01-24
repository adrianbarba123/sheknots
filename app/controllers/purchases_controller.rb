class PurchasesController < ApplicationController

  # GET: /purchases
  get "/purchases" do
    Purchase.all.to_json
    "a couple purchases"
  end

  # POST: /purchases
  post "/purchases" do
    
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
