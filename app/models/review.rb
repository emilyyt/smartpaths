class Review < ActiveRecord::Base
  attr_accessible :program_id, :rating, :text, :user_id
  #Relationship
  belongs_to :program
  belongs_to :user
end
