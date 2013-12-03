class AddGraduatingYearToUserProgram < ActiveRecord::Migration
  def change
    add_column :user_programs, :graduating_year, :integer
  end
end
