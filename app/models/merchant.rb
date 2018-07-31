class Merchant < ApplicationRecord
  has_many :invoices
  has_many :items
  has_many :customers, through: :invoices
  has_many :invoice_items, through: :invoices
  has_many :transactions, through: :invoices

  def self.all_items(id)
    find_by_sql("SELECT items.* FROM items
      JOIN merchants ON merchants.id = items.merchant_id
      WHERE items.merchant_id = #{id}")
  end

  def self.all_invoices(id)
    find_by_sql("SELECT invoices.* FROM invoices
      JOIN merchants ON merchants.id = invoices.merchant_id
      WHERE invoices.merchant_id = #{id}")
  end
end
