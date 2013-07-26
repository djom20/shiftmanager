class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :direccion
      t.string :telefono
      t.string :estado

      t.timestamps
    end
  end
end
