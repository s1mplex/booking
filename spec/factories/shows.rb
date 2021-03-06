# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :show, :class => 'Show' do
    association :movie, factory: :movie
    date "2014-03-29 15:22:38"
    association :screen, factory: :screen_with_seats
    association :show_type
  end
end
