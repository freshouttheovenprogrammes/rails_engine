class Api::V1::Merchants::SearchesController < ApplicationController
  def show
    render json: column_param == "name" ? (Merchant.where("lower(#{column_param}) = ?", value_param)).first : Merchant.where(merchant_params)
  end

  def index
    render json: (Merchant.find_all(merchant_params))
  end

  private

  def merchant_params
    params.permit(:id,
                  :name,
                  :created_at,
                  :updated_at)
  end
end
