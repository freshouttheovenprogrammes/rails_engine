class Api::V1::Transactions::RandomFindController < ApplicationController
  def show
    render json: Transaction.order("RANDOM()").first
  end
end
