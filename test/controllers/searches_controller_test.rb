require "test_helper"

class Api::V1::MerchantsController::SearchesController < ActionDispatch::IntegrationTest
  test "can find merchant by name parameter exact match" do
    merchants = create_list(:merchant, 3)
    desired_merchant = merchants[2]

    get "/api/v1/merchants/find?name=Bob_3"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["name"], desired_merchant.name
  end
end
