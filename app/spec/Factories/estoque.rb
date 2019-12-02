FactoryBot.define do

    factory :estoque do

      data { '2019-12-01' }
      quantidade { 35 }

      association :cadastro_produto, factory: :cadastro_produto
      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
    end
end