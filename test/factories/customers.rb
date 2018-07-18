FactoryBot.define do
  factory :customer do
    sequence(:first_name) {|n| "Joe_#{n}"}
    sequence(:last_name) {|n| "Biden_#{n}"}
    sequence(:created_at) {|n| "Today_#{n}"}
    sequence(:updated_at) {|n| "The next day_#{n}"}
  end
end
