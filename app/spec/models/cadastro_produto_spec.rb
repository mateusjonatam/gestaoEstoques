require 'rails_helper'

RSpec.describe CadastroProduto, type: :model do
    context 'validações gerais' do
        it { should belong_to(:unidade) }
        it { should belong_to(:grupoProduto) }
        it { should validate_presence_of(:nome) }
        it { should validate_uniqueness_of(:nome) }
    end
end