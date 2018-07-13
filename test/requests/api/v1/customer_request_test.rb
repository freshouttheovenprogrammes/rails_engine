require "test_helper"

class Api::V1::CustomersControllerTest < ActionDispatch::IntegrationTest

  test "should get customer index" do
    create_list(:customer, 3)

    get api_v1_customers_path

    customers = JSON.parse(response.body)

    assert_response :success
    assert_equal customers.count, 3
  end

  test "should get customer show" do
    customer = create(:customer)

    get api_v1_customer_path(customer)

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], customer.id
  end
end
