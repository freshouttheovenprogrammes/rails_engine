class Api::V1::Merchants::SearchesController < ApplicationController
  def show
    render json: "name".in?(column_param) ? (Merchant.find_by("lower(#{column_param}) = ?", value_param)) : Merchant.find_by(merchant_params)
  end

  def index
    render json: "name".in?(column_param) ? (Merchant.where("lower(#{column_param}) = ?", value_param)) : (Merchant.where(merchant_params))
  end

  def random
    render json: Merchant.order("RANDOM()").first
  end

  private

  def merchant_params
    params.permit(:id,
                  :name,
                  :created_at,
                  :updated_at)
  end
end
