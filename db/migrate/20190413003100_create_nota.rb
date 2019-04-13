class CreateNota < ActiveRecord::Migration[5.2]
  def change
    create_table :nota do |t|
      t.float :notaaluno
      t.float :notatrabalhos
      t.float :notalivro

      t.timestamps
    end
  end
end
