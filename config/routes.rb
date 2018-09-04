Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  
  # restful route
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  get "/products/new" => "products#new"

  post "/products" => "products#create"

  patch "products/:id" => "products#update"

  delete "products/:id" => "products#destroy"

  # get "/shop" => "products#product_method"
  # get "/first_product" => "products#first_product_method"
  # get "/second_product" => "products#second_product_method"

  # # query params 
  # get "/one_product" => "products#any_product_query_method"
  
  # #url segment params
  # get "/one_product/:id" => "products#any_product_query_method"


  end
end
