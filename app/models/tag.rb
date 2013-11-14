class Tag < ActiveRecord::Base
  attr_accessible :name, :tag_type
  #Relationships
  has_many :program_tags
  has_many :programs, :through => :program_tags
 # acts_as_votable
  validates_presence_of :tag_type
  validates_length_of :name, :minimum => 3
  has_reputation :votes, source: :user, aggregrated_by: :sum
  
end
