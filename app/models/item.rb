class Item < ApplicationRecord
  has_many :invoices
  has_many :invoices, through: :item_invoices
  belongs_to :merchant
end
