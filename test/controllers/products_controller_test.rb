require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Admin", email: "admin@test.com", password: "password", admin: true)
    post "/sessions.json", params: { email: "admin@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
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
    assert_equal ["id", "name", "price", "tax", "total", "is_discounted?", "images", "description", "supplier", "created_at", "updated_at"], data.keys
  end
end
