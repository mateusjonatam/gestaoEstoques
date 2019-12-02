class CadastroProduto < ApplicationRecord
    belongs_to: produto, class_name: 'cadastro_produto'
    belongs_to: unidade

    validates: produto, :unidade , presence: true
    validates :nome, uniqueness: true
end
