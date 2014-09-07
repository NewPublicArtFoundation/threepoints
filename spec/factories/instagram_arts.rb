# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instagram_art do
    everything "MyText"
    image_url "MyString"
    date_found 1
    tags "MyText"
    caption "MyText"
    user_name "MyString"
    user_id 1
    user_avatar "MyString"
    location_name "MyString"
    location_lon 1.5
    location_lat 1.5
    location_id 1
  end
end
