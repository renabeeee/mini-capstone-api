Rails.application.routes.draw do

  get "/water-bottle", controller: "products", action: "water_bottle_info"

  get "/hoodie", controller: "products", action: "hoodie_info"

  get "/socks", controller: "products", action: "socks_info"

  get "/products", controller: "products", action: "all_products"

  get "/products/:id" => "products#any_product"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers" => "suppliers#index"


  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "orders/:id" => "orders#show"

  get "/orders" => "orders#index"

end
