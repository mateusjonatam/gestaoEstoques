FactoryBot.define do

    factory :estoque do

      data { '2019-12-01' }
      quantidade { 35 }

      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :cad_produto, factory: :cadastro_produto
      
    end
end