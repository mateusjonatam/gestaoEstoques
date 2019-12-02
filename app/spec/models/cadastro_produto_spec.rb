require 'rails_helper'

RSpec.describe CadastroProduto, type: :model do
    context 'validações gerais' do
        it { should belong_to(:unidade) }
        it { should belong_to(:grupoProduto) } 
    end
end