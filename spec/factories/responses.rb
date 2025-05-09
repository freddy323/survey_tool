FactoryBot.define do
  factory :response do
    survey
    answer { [ true, false ].sample }
  end
end
