require 'test_helper'

class Api::V1::CustomersController::InvoiceSearchesController < ActionDispatch::IntegrationTest

  test "can find all invoices by customer" do
    customer = create(:customer)
    create(:invoice, customer: bad_customer = build(:customer))
    create_list(:invoice, 3, customer: customer)

    get "/api/v1/customers/#{customer.id}/invoices"

    result = JSON.parse(response.body)

    refute result[0].include?(bad_customer.id)
  end
end
