class Api::V1::InvoiceItems::ItemSearchesController < ApplicationController
  def show
    render json: InvoiceItem.find(params[:id]).item
  end
end
