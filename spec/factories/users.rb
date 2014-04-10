# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "abc@abc.com"
    password "secret1"
    password_confirmation "secret1"
  end
end
