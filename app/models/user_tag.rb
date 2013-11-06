class UserTag < ActiveRecord::Base
  attr_accessible :tag_id, :user_id
  #Relationships
  belongs_to :tag
  belongs_to :user
end
