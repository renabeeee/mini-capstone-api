# User.create!([
#   {name: "Michael", email: "mscott@dundermifflin.com", password_digest: "$2a$12$3rCCIjhm/55RgO0.AsZ.rO0n/nMKcVeoYh2gNh9ci/hyDcapzN.OC", admin: false},
#   {name: "Serena", email: "test@test.com", password_digest: "$2a$12$B9HYJfiIrcbqc4uT.dB6z.XC5hGCVXzGqcrqbXe9O1zr5WxCq7jG2", admin: true}
# ])
# Supplier.create!([
#   {name: "The Marathon Clothing", email: "service@themarathonclothing.com", phone_number: "562-296-1818"},
#   {name: "Girls Who Dress Like Boys", email: "GWDLBofficial@gmail.com", phone_number: "343-299-4750"},
#   {name: "Adidas", email: "info@adidas.com", phone_number: "290-433-6878"},
#   {name: "Nike", email: "info@nike.com", phone_number: "800-344-6453"}
# ])
# Product.create!([
#   {name: "MARATHON STACKED SCRIPT T-SHIRT - BONE/BLACK", price: "50.0", description: "Unisex crewneck tee (White)", supplier_id: 1},
#   {name: "\"Too Close\" Statement Hoodie", price: "120.0", description: "This hoodie features a white puff ink printed design, our signature kangaroo split pocket and premium mid weight fleece for the ultimate cozy feel.", supplier_id: 2},
#   {name: "Doodles Trucker Cap", price: "45.0", description: "Our doodle trucker cap features a screen printed puff ink.", supplier_id: 2},
#   {name: "ORIGINALS ALWAYS FRESH HOODIE", price: "35.0", description: "A cozy fleece sweatshirt with pure Originals style.", supplier_id: 3},
#   {name: "NEUTRAL COURT ADIBREAK PANTS", price: "56.0", description: "Adibreak Pants made in part with a blend of recycled and renewable materials.", supplier_id: 3},
#   {name: "Jordan Hex Mule", price: "65.0", description: "Foamy and comfy footwear", supplier_id: 10}
# ])
# Order.create!([
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "10.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "11.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "11.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "11.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "11.0", tax: "1.0", total: "11.0"},
#   {user_id: 1, product_id: 4, quantity: 10, subtotal: "350.0", tax: "31.5", total: "381.5"}
# ])
# Image.create!([
#   {url: "https://www.themarathonclothing.com/cdn/shop/files/Marathon_Stacked_Script_Bone_1_1080x.jpg?v=1698976968", product_id: 1},
#   {url: "https://girlswhodresslikeboys.com/cdn/shop/files/doodle_blk_hoodie.png?v=1700616876&width=1346", product_id: 2}
# ])

# category = Category.create!(name: "Tops")
# category = Category.create!(name: "Hoodies")
# category = Category.create!(name: "Bottoms")
# category = Category.create!(name: "Headwear")
# category = Category.create!(name: "Streetwear")
# category = Category.create!(name: "Cozy")

# category = CategoryProduct.create!(category_id: 1, product_id: 1)

# category = CategoryProduct.create!(category_id: 5, product_id: 1)

# category = CategoryProduct.create!(category_id: 2, product_id: 2)

# category = CategoryProduct.create!(category_id: 2, product_id: 6)

# category = CategoryProduct.create!(category_id: 3, product_id: 4)

# category = CategoryProduct.create!(category_id: 4, product_id: 2)

# category = CategoryProduct.create!(category_id: 4, product_id: 6)

# category = CategoryProduct.create!(category_id: 6, product_id: 3)

# category = CategoryProduct.create!(category_id: 6, product_id: 14)
