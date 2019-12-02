FactoryBot.define do

    factory :cadastro_produto do
        
      nome { 'Banana' }
  
      association :unidade, factory: :unidade
      association :produto, factory: :produto
    end
  end