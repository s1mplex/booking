# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation_seat do
    association :reservation
    association :seat
  end
end