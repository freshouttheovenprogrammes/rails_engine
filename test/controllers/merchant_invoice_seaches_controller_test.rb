require 'test_helper'

class Api::V1::MerchantsController::InvoiceSearchesController < ActionDispatch::IntegrationTest

  test "can find all invoices by merchant" do
    merchant = create(:merchant)
    create(:invoice, merchant: bad_merchant = build(:merchant, name: "not the one"))
    create_list(:invoice, 3, merchant: merchant)

    get "/api/v1/merchants/#{merchant.id}/invoices"

    result = JSON.parse(response.body)
    refute result[0].include?(bad_merchant.id)
  end
end
