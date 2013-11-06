class Institution < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state
  #Relationship
  has_many :programs

  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
end
