FactoryBot.define do
  factory :album do
     name { Faker::Lorem.word }
     description { Faker::Lorem.paragraph }
    end
end
