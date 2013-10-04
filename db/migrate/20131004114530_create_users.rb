class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 45
      t.string :password, limit: 40
      t.string :email, limit: 200
      t.string :name, limit: 50

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
