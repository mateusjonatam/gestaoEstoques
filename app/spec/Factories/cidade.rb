FactoryBot.define do

    factory :cidade do

      nome { 'Renascenca' }
  
      association :estado, factory: :estado
      
    end
end