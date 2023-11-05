puts "hello!"

product = Product.new(name: "Water Bottle", price: 14, image_url:"https://yeti-web.imgix.net/41f88948c3f994ba/W-Drinkware_BottleChug_64oz_Black_Studio_PrimaryB.png?bg=0fff&auto=format&w=846&h=846", description: "64 oz water bottle with chug cap")
product.create
