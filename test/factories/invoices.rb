FactoryBot.define do
  factory :invoice do
    sequence(:customer_id) { |n|
    n }
    sequence(:merchant_id) { |n|
    n }
    status "shipped"
    created_at "2018-07-10 12:57:33"
    updated_at "2018-07-10 12:57:33"
  end
end
