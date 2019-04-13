class Professor < ApplicationRecord
    validates :nome, :email, :documento, :telefone, :endereco presence: true
    validates :email, uniqueness: true
end
