class Api::V1::Merchants::RandomFindController < ApplicationController
  def show
    render json: Merchant.order("RANDOM()").first
  end
end
