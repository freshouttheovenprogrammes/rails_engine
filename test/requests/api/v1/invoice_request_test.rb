require "test_helper"

class Api::V1::InvoicesControllerTest < ActionDispatch::IntegrationTest
  test "get all invoices" do
    create_list(:invoice, 3)

    get api_v1_invoices_path

    invoices = JSON.parse(response.body)

    assert_response :success
    assert_equal invoices.count, 3
  end
  test "get one invoice" do
    invoice = create(:invoice)

    get api_v1_invoice_path(invoice), params: { invoice: { id: invoice.id } }

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], invoice.id
  end
end
