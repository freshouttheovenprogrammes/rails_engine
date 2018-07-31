class Api::V1::Merchants::ItemSearchesController < ApplicationController
  def merchant_items
    render json: Merchant.all_items(params[:id])
  end
end
