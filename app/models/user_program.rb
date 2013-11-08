class UserProgram < ActiveRecord::Base
  attr_accessible :graduating_year, :program_tag_id, :user_id
  #Relationships
  belongs_to :program
  belongs_to :user
end
