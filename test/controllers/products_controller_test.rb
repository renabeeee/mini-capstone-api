require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    # assert_response 200
    data = JSON.parse(response.body)
    # assert_equal "Updated name", data["name"]
    end

    # test "destroy" do
    #   assert_difference "Product.count", -1 do
    #   delete "/products/#{Product.first.id}.json"
    #   assert_response 200
    # end

    test "is_discounted?" do
      product = Product.new(price: 11)
      assert_equal false, product.is_discounted?
      product = Product.new(price: 1)
      assert_equal true, product.is_discounted?
      end

      test "tax" do
      product = Product.new(price: 100)
      assert_in_delta 9, product.tax
      end

      test "total" do
      product = Product.new(price: 100)
      assert_in_delta 109, product.total
      end
    end
