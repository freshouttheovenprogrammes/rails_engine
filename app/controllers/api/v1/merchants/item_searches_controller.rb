class Api::V1::Merchants::ItemSearchesController < ApplicationController
  def index
    render json: Merchant.find(params[:id]).items
  end
end
