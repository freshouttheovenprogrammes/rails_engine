require "test_helper"

class Api::V1::MerchantsController::SearchesController < ActionDispatch::IntegrationTest

  def setup
    @merchants = create_list(:merchant, 3)
  end

  test "can find merchant by name parameter case insensitive match" do
    desired_merchant = @merchants[2]

    get "/api/v1/merchants/find?name=#{desired_merchant.name.upcase}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["name"], desired_merchant.name
  end

  test "can find merchant by id parameter exact match" do
    desired_merchant = @merchants[2]

    get "/api/v1/merchants/find?id=#{desired_merchant.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], desired_merchant.id
  end

  test "can grab random merchant" do
    get "/api/v1/merchants/random"

    result = JSON.parse(response.body)

    assert_response :success
  end
end
