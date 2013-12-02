class UserProgram < ActiveRecord::Base
  attr_accessible :graduating_year, :user_id, :program_id
  #Relationships
  has_one :program
  belongs_to :user
end
