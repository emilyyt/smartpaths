class ProgramTag < ActiveRecord::Base
  attr_accessible :program_id, :tag_id
  belongs_to :tag
  belongs_to :program
end
