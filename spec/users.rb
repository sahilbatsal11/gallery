FactoryBot.define do
  factory :user do
    name { Faker::Lorem.word }
     description { Faker::Lorem.paragraph }
    end
  end
end
