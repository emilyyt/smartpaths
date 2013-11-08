class UserTag < ActiveRecord::Base
  attr_accessible :tag_id, :user_id
  #Relationships
  belongs_to :program_tag
  belongs_to :user
end
