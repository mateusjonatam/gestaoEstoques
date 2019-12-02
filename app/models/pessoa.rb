class Pessoa < ApplicationRecord
  belongs_to :endereco

  validates :nome, :documento , :endereco, presence: true
  validates :documento, uniqueness: true
end
