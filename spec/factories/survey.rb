FactoryBot.define do
  factory :survey do
    user_id { association :user }
    symptom { 'Tosse' }
  end
end