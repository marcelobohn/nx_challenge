FactoryBot.define do
  factory :loan do
    name { "My Loan" }
    value { 1500 }
    tax { 1.5 }
  end
end
