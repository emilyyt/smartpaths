class Program < ActiveRecord::Base
  attr_accessible :graduating_salary, :institution_id, :name
  #Relationships
  belongs_to :institution
  has_many :program_tags
  has_many :user_programs
  has_many :review
  has_many :users, :through => :user_programs
end
