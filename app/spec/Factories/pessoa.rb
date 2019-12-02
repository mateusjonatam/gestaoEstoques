FactoryBot.define do

    factory :pessoa do
        
        nome { 'Mateus' }
        documento { '999999999' }
        association :endereco, factory: :endereco
    end
    
end