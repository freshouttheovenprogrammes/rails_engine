class Api::V1::InvoiceItemsController::SearchesController < ApplicationController
  def show
    render json:(InvoiceItem.where(invoice_item_params))
  end

  def index
    render json:(InvoiceItem.find_all(invoice_item_params))
  end

  private

  def invoice_item_params
    params.permit(:item_id,
                  :invoice_id,
                  :quantity,
                  :unit_price,
                  :created_at,
                  :updated_at)
  end
end
