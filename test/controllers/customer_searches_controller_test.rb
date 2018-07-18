require 'test_helper'

class Api::V1::CustomersController::SearchesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @customers = create_list(:customer, 3)
  end

  test "can find customer by first name parameter exact match" do
    desired_customer = @customers[2]

    get "/api/v1/customers/find?first_name=#{desired_customer.first_name}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["first_name"], desired_customer.first_name
  end

  test "can find customer by last name parameter exact match" do
    desired_customer = @customers[2]

    get "/api/v1/customers/find?last_name=#{desired_customer.last_name}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["last_name"], desired_customer.last_name
  end

  test "can find customer by id parameter exact match" do
    desired_customer = @customers[2]

    get "/api/v1/customers/find?id=#{desired_customer.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_customer.id
  end

  test "can find customer by created_at parameter exact match" do
    desired_customer = @customers[1]

    get "/api/v1/customers/find?created_at=#{desired_customer.created_at}"

    result = JSON.parse(response.body)
    require "pry"; binding.pry
    assert_response :success
    assert_equal result[0]["id"], desired_customer.id
  end

  test "can find customer by updated_at parameter exact match" do
    desired_customer = @customers[0]

    get "/api/v1/customers/find?updated_at=#{desired_customer.updated_at}"

    result = JSON.parse(response.body)
    require "pry"; binding.pry
    assert_response :success
    assert_equal result[0]["id"], desired_customer.id
  end
end
