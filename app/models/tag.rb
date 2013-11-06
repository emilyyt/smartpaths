class Tag < ActiveRecord::Base
  attr_accessible :name, :type, :vote
  #Relationships
  has_many :program_tags
  has_many :user_tags
  has_many :users, :through => :user_tags
  has_many :programs, :through => :program_tags

  validates_presence_of :name
  validates_presence_of :type
end
