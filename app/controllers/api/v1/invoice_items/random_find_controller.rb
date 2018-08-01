class Api::V1::InvoiceItems::RandomFindController < ApplicationController
  def show
    render json: InvoiceItem.order("RANDOM()").first
  end
end
