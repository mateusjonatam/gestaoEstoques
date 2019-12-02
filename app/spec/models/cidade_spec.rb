require 'rails_helper'

RSpec.describe Cidade, type: :model do
  context 'validações geras' do
    it { should belong_to(:estado) }
    
    end
end 