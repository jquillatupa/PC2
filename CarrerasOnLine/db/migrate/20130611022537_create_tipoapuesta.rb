class CreateTipoapuesta < ActiveRecord::Migration
  def change
    create_table :tipoapuesta do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
