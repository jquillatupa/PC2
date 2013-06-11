class CreateDetalleapuesta < ActiveRecord::Migration
  def change
    create_table :detalleapuesta do |t|
      t.integer :idapuesta
      t.integer :idcaballo

      t.timestamps
    end
  end
end
