json.extract! carted_product, :id, :user, :product, :quantity, :status, :created_at, :updated_at

json.id carted_product.id
json.user_id carted_product.user_id
json.quantity carted_product.quantity
json.user carted_product.user
json.product_id carted_product.product_id
json.product carted_product.product
json.status carted_product.status
json.created_at carted_product.created_at
json.updated_at carted_product.updated_at
