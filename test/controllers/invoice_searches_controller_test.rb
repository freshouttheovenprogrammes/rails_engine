require 'test_helper'

class Api::V1::InvoicesController::SearchesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @invoices = create_list(:invoice, 3)
  end

  test "can find invoice by customer id parameter exact match" do
    desired_invoice = @invoices[2]

    get "/api/v1/invoices/find?customer_id=#{desired_invoice.customer_id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["customer_id"], desired_invoice.customer_id
  end

  test "can find invoice by merchant id parameter exact match" do
    desired_invoice = @invoices[2]

    get "/api/v1/invoices/find?merchant_id=#{desired_invoice.merchant_id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["merchant_id"], desired_invoice.merchant_id
  end

  test "can find invoice by id parameter exact match" do
    desired_invoice = @invoices[2]

    get "/api/v1/invoices/find?id=#{desired_invoice.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_invoice.id
  end

  test "can find invoice by status parameter exact match" do
    this_desired_invoice = create(:invoice)

    get "/api/v1/invoices/find?status=#{this_desired_invoice.status}"

    assert_response :success
    assert response.body.include?(this_desired_invoice.id.to_s)
  end
end
