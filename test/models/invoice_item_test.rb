require "test_helper"

describe InvoiceItem do
  let(:invoice_item) { InvoiceItem.new }

  it "must be valid" do
    value(invoice_item).must_be :valid?
  end
end
