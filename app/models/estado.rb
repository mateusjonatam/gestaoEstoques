class Estado < ApplicationRecord
    validates :nome , presence: true
    validates :nome, :uf, uniqueness: true
end
