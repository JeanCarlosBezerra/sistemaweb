class CreateFalta < ActiveRecord::Migration[5.2]
  def change
    create_table :falta do |t|
      t.integer :presenças

      t.timestamps
    end
  end
end
