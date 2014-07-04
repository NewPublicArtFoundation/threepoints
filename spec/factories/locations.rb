# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    city_name "MyText"
    country_name "MyText"
    address "MyText"
    longitude 1.5
    latitude 1.5
  end
end
