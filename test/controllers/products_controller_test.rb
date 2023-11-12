require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "update" do

    product = Product.first

    patch "/products/#{product.id}.json", params: { name: "Updated name" }

    assert_response 200

    data = JSON.parse(response.body)

    assert_equal "Updated name", data["name"]

    end
end
