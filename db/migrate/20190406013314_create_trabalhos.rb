class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.date :dataentrega
      t.string :disciplina
      t.string :descricao

      t.timestamps
    end
  end
end
