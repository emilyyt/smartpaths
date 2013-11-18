class Institution < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zip
  #Relationship
  has_many :programs

  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :city
  validates_length_of :zip, :minimum => 5, :maximum => 5
  validates_inclusion_of :state, :in => %w[AL AK AZ AR CO CT DE FL GA HI ID IL IN IA KS KY LA MA ME MD PA OH WV CA], :message => "is not an option"



	STATES = [['Pennsylvania', 'PA'],['Ohio', 'OH'],['West Virginia', 'WV']]

end
