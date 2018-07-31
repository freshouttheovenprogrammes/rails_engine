FactoryBot.define do
  factory :transaction do
    sequence(:invoice_id) { |n|
      n }
    sequence (:credit_card_number) { |n|
      (10**15) + n }
    credit_card_expiration_date "2018-07-09 12:34:10"
    result "success"
    created_at "2018-07-09 12:34:10"
    updated_at "2018-07-09 12:34:10"
    invoice
  end
end
