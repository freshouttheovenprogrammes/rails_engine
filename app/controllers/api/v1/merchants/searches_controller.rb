class Api::V1::Merchants::SearchesController < ApplicationController
  def show
    render json: (Merchant.where(merchant_params))
  end

  private

  def merchant_params
    params.permit(:id, :name, :created_at, :updated_at)
  end
end
