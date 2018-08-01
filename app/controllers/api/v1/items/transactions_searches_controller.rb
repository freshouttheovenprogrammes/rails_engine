class Api::V1::Items::TransactionsSearchesController < ApplicationController
  def index
    render json: Item.find(params[:id]).transactions
  end
end
