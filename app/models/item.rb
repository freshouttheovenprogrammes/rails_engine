class Item < ApplicationRecord
  has_many :invoices
  has_many :invoices, through: :item_invoices
end
