json.extract! aluno, :id, :nome, :documento, :telefone, :email, :pai, :mae, :endereco, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
