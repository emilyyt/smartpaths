class AddUserField < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :strings
    add_column :users, :password_salt, :strings
  end
end
