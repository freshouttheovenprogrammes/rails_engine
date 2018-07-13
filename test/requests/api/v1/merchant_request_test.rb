require "test_helper"

class Api::V1::MerchantsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @merchant = create(:merchant)
  end

  test "should get index" do
    FactoryBot.create_list(:merchant, 3)

    get api_v1_merchants_path

    merchants = JSON.parse(response.body)

    assert_response :success
    assert_equal merchants.count, 3
  end

  test "should get show" do
    get api_v1_merchant_path(@merchant), params: { merchant: { id: @merchant.id } }

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], @merchant.id
  end
end
