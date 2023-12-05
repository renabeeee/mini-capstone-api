require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json",
        headers: { "Authorization" => "Bearer #{@jwt}" },
        params: { supplier_id: Supplier.first.id, price: 1, name: "test product", description: "test description", image_url: "image.jpg" }
      data = JSON.parse(response.body)
      assert_response 200
    end

    post "/products.json",
      headers: { "Authorization" => "Bearer #{@jwt}" },
      params: {}
    assert_response 422

    post "/products.json"
    assert_response 401
  end

  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "categories", "supplier", "is_discounted", "tax", "total", "images", "description", "quantity", "created_at", "updated_at"],
    data.keys
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json",
      headers: { "Authorization" => "Bearer #{@jwt}" },
      params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price.to_s, data["price"]
    assert_equal product.description, data["description"]

    patch "/products/#{product.id}.json",
      headers: { "Authorization" => "Bearer #{@jwt}" },
      params: { name: "" }
    assert_response 422

    patch "/products/#{product.id}.json"
    assert_response 401
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end

    delete "/products/#{Product.first.id}.json"
    assert_response 401
  end
end
