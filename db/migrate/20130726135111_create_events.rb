class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :titulo
      t.string :descripcion
      t.date :fecha
      t.string :prioridad
      t.string :username
      t.string :estado

      t.timestamps
    end
  end
end
