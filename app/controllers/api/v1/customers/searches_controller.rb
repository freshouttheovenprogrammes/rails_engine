class Api::V1::Customers::SearchesController < ApplicationController
  def show
    render json: "name".in?(column_param) ? (Customer.find_by("lower(#{column_param}) = ?", value_param)) : Customer.find_by(customer_params)
  end

  def index
    render json: (Customer.where(customer_params))
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
