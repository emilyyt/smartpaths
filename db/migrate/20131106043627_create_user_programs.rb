class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.date :graduating_year
      t.integer :program_id
      t.integer :user_id

      t.timestamps
    end
  end
end
