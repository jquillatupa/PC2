class CreateCaballoxcarerras < ActiveRecord::Migration
  def change
    create_table :caballoxcarerras do |t|
      t.integer :idcarrera
      t.integer :idcaballo
      t.integer :puesto

      t.timestamps
    end
  end
end
