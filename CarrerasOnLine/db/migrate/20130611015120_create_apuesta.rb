class CreateApuesta < ActiveRecord::Migration
  def change
    create_table :apuesta do |t|
      t.integer :idapuesta
      t.integer :idtipoapuesta
      t.integer :idcarrera
      t.integer :montoapuesta
      t.integer :montopagado

      t.timestamps
    end
  end
end
