class Api::V1::Items::SearchesController < ApplicationController
  def show
    render json: "name".in?(column_param) ? (Item.find_by("lower(#{column_param}) = ?", value_param)) : Item.find_by(item_params)
  end

  def index
    render json: (Item.where(item_params))
  end

  def random
    render json: Item.order("RANDOM()").first
  end

  private

  def item_params
    params.permit(:id,
                  :name,
                  :description,
                  :unit_price,
                  :merchant_id,
                  :created_at,
                  :updated_at)
  end
end
