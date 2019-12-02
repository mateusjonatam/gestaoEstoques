class Endereco < ApplicationRecord
  belongs_to :cidade

  validates :rua , :bairro , :numero, :cep, validates: true
end
