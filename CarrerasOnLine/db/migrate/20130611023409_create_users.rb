class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :surname
      t.string :user_name
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end
