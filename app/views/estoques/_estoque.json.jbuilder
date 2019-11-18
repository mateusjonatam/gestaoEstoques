json.extract! estoque, :id, :data, :quantidade, :pessoa_id, :operacao, :produto, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
