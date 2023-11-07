Rails.application.routes.draw do

  get "/water-bottle", controller: "products", action: "water_bottle_info"
  get "/hoodie", controller: "products", action: "hoodie_info"
  get "/socks", controller: "products", action: "socks_info"
  get "/all-products", controller: "products", action: "all_products"
  get "/any-product/:id" => "products#any_product"
end
