class Tag < ActiveRecord::Base
  attr_accessible :name, :type, :count
  #Relationships
  has_many :program_tags
  has_many :user_tags
  has_many :users, :through => :user_tags
  has_many :programs, :through => :program_tags

  validates_presence_of :type
  validates_numericality_of :count, :only_integer => true, :greater_than_or_equal_to => 0
  validates_length_of :name, :minimum => 3
end
