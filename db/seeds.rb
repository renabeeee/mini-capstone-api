puts "hello!"

product = Product.new(name: "Water Bottle", price: 14, image_url:"https://yeti-web.imgix.net/41f88948c3f994ba/W-Drinkware_BottleChug_64oz_Black_Studio_PrimaryB.png?bg=0fff&auto=format&w=846&h=846", description: "64 oz water bottle with chug cap")
product.create

product = Product.new(name: "Hoodie", price: 48, image_url:"https://images.lululemon.com/is/image/lululemon/LM3ERZS_049844_1?wid=1600&op_usm=0.5,2,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", description: "Lululemon Cotton Hoodie")
product.create
puts "all"
