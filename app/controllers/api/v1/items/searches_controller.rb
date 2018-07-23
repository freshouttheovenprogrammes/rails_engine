class Api::V1::Items::SearchesController < ApplicationController
  def show
    render json: column_param == "name" || column_param == "description" ? (Item.where("lower(#{column_param}) = ?", value_param)).first : Item.where(item_params)
  end

  def index
    render json: (Item.find_all(item_params))
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
