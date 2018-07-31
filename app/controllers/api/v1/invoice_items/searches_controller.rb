class Api::V1::InvoiceItems::SearchesController < ApplicationController
  def show
    render json:(InvoiceItem.find_by(invoice_item_params))
  end

  def index
    render json:(InvoiceItem.where(invoice_item_params))
  end

  def random
    render json: InvoiceItem.order("RANDOM()").first
  end

  private

  def invoice_item_params
    params.permit(:id,
                  :item_id,
                  :invoice_id,
                  :quantity,
                  :unit_price,
                  :created_at,
                  :updated_at)
  end
end
