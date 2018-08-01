class Api::V1::Invoices::RandomFindController
  def show
    render json: Invoice.order("RANDOM()").first
  end
end
