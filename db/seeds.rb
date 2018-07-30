# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach("data/customers.csv", headers: true) do |row|
  Customer.create!(first_name: row[1],
                  last_name: row[2],
                  created_at: row[3],
                  updated_at: row[4])
  puts "Created customer id:#{row[0]}"
end
CSV.foreach("data/invoice_items.csv", headers: true) do |row|
  InvoiceItem.create!(item_id: row[1].to_i,
                     invoice_id: row[2].to_i,
                     quantity: row[3].to_i,
                     unit_price: row[4].to_i,
                     created_at: row[5],
                     updated_at: row[6])
  puts "Created Invoice Item id:#{row[0]}"
end
CSV.foreach("data/invoices.csv", headers: true) do |row|
  Invoice.create!(customer_id: row[1].to_i,
                 merchant_id: row[2].to_i,
                 status: row[3],
                 created_at: row[4],
                 updated_at: row[5])
  puts "Created Invoice id:#{row[0]}"
end
CSV.foreach("data/items.csv", headers: true) do |row|
  Item.create!(name: row[1],
              description: row[2],
              unit_price: row[3].to_i,
              merchant_id: row[4].to_i,
              created_at: row[5],
              updated_at: row[6])
  puts "Created Item id:#{row[0]}"
end
CSV.foreach("data/merchants.csv", headers: true) do |row|
  Merchant.create!(name: row[1],
                  created_at: row[2],
                  updated_at: row[3])
  puts "Created Merchant id:#{row[0]}"
end
CSV.foreach("data/transactions.csv", headers:true) do |row|
  Transaction.create!(invoice_id: row[1].to_i,
                     credit_card_number: row[2].to_i,
                     credit_card_expiration_date: row[3],
                     result: row[4],
                     created_at: row[5],
                     updated_at: row[6])
    puts "Created Transaction id:#{row[0]}"
end
