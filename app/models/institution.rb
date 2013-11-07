class Institution < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state
  #Relationship
  has_many :programs

  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :city
  validates_inclusion_of :state, :in => %w[AL AK AZ AR CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD PA OH WV CA], :message => "is not an option"
end
