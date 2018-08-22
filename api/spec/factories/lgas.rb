FactoryBot.define do
  factory :lga do
    code { Faker::Integer.number(4) }
    name { Faker::Lorem.word }
    long_name { Faker::Lorem.word }
  end
end