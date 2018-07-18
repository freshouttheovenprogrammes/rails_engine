FactoryBot.define do
  factory :merchant do
    sequence(:name) {|n| "Bob_#{n}"}
    sequence(:created_at) {|n| "2018-07-0#{n}"}
    sequence(:updated_at) {|n| "2018-07-1#{n}"}
  end
end
