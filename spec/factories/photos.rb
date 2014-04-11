# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    name "Badger"
    photo { fixture_file_upload 'skunk.jpeg', 'image/jpeg'}
  end
end
