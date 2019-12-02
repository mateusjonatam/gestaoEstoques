FactoryBot.define do
    factory :compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :venda }
    end

    factory :venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :compra }
    end

    factory :devolucao_venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :devolucaoVenda }
    end

    factory :devolucao_compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :devolucaoCompra }
    end
end