require 'test_helper'

class Api::V1::MerchantsController::ItemSearchesController < ActionDispatch::IntegrationTest

  test "can find all items by merchant" do
    merchant = create(:merchant)
    create(:item, merchant: bad_merchant = build(:merchant, name: "not the one"))
    create_list(:item, 3, merchant: merchant)

    get "/api/v1/merchants/#{merchant.id}/items"

    result = JSON.parse(response.body)
    refute result[0].include?(bad_merchant.id)
  end
end
