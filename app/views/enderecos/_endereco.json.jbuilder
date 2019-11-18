json.extract! endereco, :id, :rua, :bairro, :numero, :cep, :cidade_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
