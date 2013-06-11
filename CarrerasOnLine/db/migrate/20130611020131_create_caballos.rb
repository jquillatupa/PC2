class CreateCaballos < ActiveRecord::Migration
  def change
    create_table :caballos do |t|
      t.string :nombre
      t.integer :ratio

      t.timestamps
    end
  end
end
