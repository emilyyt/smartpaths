class ChangeUser < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :password_salt, :string
    remove_column :users, :password_digest, :string
  end
end
