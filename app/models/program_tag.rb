class ProgramTag < ActiveRecord::Base
  attr_accessible :program_id, :tag_id, :counter
  belongs_to :tag
  belongs_to :program
  has_many :user_tags
  has_many :users, :through => :user_tags

  before_save :default_vote_counter, :update_counter
  #after_create :create_user_tag

  def default_vote_counter
      self.counter ||= 0
    end
  def update_counter
  	self.counter = UserTag.count(:all, :conditions => "program_tag_id = id")
  end

  def create_user_tag
        UserTag.create :program_tag_id => @program_tag.id, :user_id => current_user.id
  end

end
