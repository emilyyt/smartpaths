class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :institution_id
      t.integer :graduating_salary

      t.timestamps
    end
  end
end
