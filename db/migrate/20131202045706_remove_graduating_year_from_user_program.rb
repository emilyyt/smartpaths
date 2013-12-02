class RemoveGraduatingYearFromUserProgram < ActiveRecord::Migration
  def up
	remove_column :user_programs, :graduating_year
  end

  def down
	add_column :user_programs, :graduating_year
  end
end
