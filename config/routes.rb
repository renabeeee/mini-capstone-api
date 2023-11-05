Rails.application.routes.draw do

  get "/water-bottle", controller: "water_bottle", action: "water_bottle_info"

end
