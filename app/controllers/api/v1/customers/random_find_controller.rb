class Api::V1::Customers::RandomFindController < ApplicationController
  def show
    render json: Customer.order("RANDOM()").first
  end
end
