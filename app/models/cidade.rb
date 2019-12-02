class Cidade < ApplicationRecord
  belongs_to :estado

  validates :nome, :estado , presence: true
end
