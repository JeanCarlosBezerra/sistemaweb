class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.float :nota
      t.string :disciplina

      t.timestamps
    end
  end
end
