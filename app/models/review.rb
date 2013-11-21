class Review < ActiveRecord::Base
  attr_accessible :program_id, :rating, :text, :user_id
  #Relationship
  belongs_to :program
  belongs_to :user

  #finds all the reviews with the same program_id. this scope doesn't work quite right.
  scope :program_reviews, lambda {|review| joins(:program).where("review.program_id = ?", :id)}
end
