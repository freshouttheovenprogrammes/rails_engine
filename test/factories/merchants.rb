FactoryBot.define do
  factory :merchant do
    sequence(:name) { |n| "Bob_#{n}" }
    created_at "2018-07-09 12:32:22"
    updated_at "2018-07-09 12:32:22"
  end
end
