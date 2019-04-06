class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.date :data
      t.string :disciplina
      t.string :objetivo
      t.string :realizado

      t.timestamps
    end
  end
end
