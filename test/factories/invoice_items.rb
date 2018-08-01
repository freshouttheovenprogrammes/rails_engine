FactoryBot.define do
  factory :invoice_item do
    sequence(:item_id) {|n| n}
    sequence(:invoice_id) {|n| n}
    sequence(:quantity) {|n| n}
    sequence(:unit_price) {|n| (n * 2)}
    created_at "2018-07-11 08:50:16"
    updated_at "2018-07-11 08:50:16"
    invoice
    item
  end
end

# QUESTION: how did you like to handle testing has_many relations? 
