class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :mail
      t.text :password_digest
      t.timestamps
    end
    add_index :users, :mail, unique: true
  end
end
