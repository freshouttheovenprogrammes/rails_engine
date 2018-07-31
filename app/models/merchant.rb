class Merchant < ApplicationRecord
  has_many :invoices
  has_many :items
  has_many :customers, through: :invoices
  has_many :invoice_items, through: :invoices
  has_many :transactions, through: :invoices

  def self.all_items(id)
    # joins(:items).where('items.merchant_id' => id)
    find_by_sql("SELECT items.* FROM items
      JOIN merchants ON merchants.id = items.merchant_id
      WHERE items.merchant_id = #{id}")
  end
end
