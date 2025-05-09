FactoryBot.define do
  factory :survey do
    question { Faker::Lorem.question }
  end
end
