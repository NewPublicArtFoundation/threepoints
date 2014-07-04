# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :graffiti_picture, :class => 'GraffitiPictures' do
    graffiti nil
    image_url "MyString"
    image_description "MyText"
    location nil
  end
end
