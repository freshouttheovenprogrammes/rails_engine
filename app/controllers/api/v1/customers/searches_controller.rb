class Api::V1::Customers::SearchesController < ApplicationController
  def show
    render json: (Customer.where(customer_params))
  end

  def index
    render json: (Customer.find_all(customer_params))
  end

  private

  def customer_params
    params.permit(:id,
                  :first_name,
                  :last_name,
                  :created_at,
                  :updated_at)
  end
end
