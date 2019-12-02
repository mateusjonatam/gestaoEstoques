class Operacao < ApplicationRecord
    enum tipo: { venda: 1, caompra: 2, devolucaoCompra: 3, devolucaoVenda: 4 }

    validates :nome, presence: true
    validates :nome, uniqueness: true

end
