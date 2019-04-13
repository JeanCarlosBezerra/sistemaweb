class Aluno < ApplicationRecord
    validates :nome, :email, :documento, :telefone, :pai, :mae, :endereco presence: true
    validates :email, uniqueness: true
end
