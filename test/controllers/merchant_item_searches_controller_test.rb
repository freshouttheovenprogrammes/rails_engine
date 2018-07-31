require 'test_helper'

class Api::V1::MerchantsController::ItemSearchesController < ActionDispatch::IntegrationTest

  test "can find all items by merchant" do
    merchant = create(:merchant)
    item1, item2, item3 = create_list(:item, 3, merchant: merchant)

    get "/api/v1/merchants/#{merchant.id}/items"

    result = JSON.parse(response.body)
    require "pry"; binding.pry
  end
end
