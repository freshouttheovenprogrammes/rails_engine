class Api::V1::Merchants::ItemSearchesController < ApplicationController
  def index
    render json: Merchant.all_items(params[:id])
  end
end
