class Operacao < ApplicationRecord
    enum tipo: { venda: 0, caompra: 1, devolucaoCompra: 2, devolucaoVenda: 3 }

    validates :nome, :tipo, presence: true

end
