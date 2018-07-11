require "test_helper"

class Api::V1::MerchantsControllerTest < ActionController::TestCase
  test "should get index" do
    FactoryBot.create_list(:merchant, 3)

    get :index

    merchants = JSON.parse(response.body)

    assert_response :success
    assert_equal merchants.count, 3
  end

  test "should get show" do
    merchant = FactoryBot.build :merchant

    get api_v1_merchant_path(merchant)

    result = JSON.parse(response.body)

    assert_equal result.count, 1
  end
end
