class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :documento
      t.integer :telefone
      t.string :email
      t.string :endereco

      t.timestamps
      
    end
  end
end
