class CreateAccessTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :access_tokens do |t|
      t.text :token
      t.integer :user_id
      t.datetime :expired_at
      t.timestamps
    end
    add_index :access_tokens, :token, unique: true
  end
end
