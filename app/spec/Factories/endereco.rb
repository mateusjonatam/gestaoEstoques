FactoryBot.define do

    factory :endereco do

      rua { 'Rua Arthur bernardes' }
      cep { '85610000' }
      numero { '655' }

      association :cidade, factory: :cidade
      association :estado, factory: :estado
      
end