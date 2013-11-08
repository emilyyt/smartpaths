require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessor :password
  attr_accessible :email, :first_name, :is_admin, :last_name, :password, :is_active, :password_confirmation
  
  #Relationships
  has_many :user_tags
  has_many :user_programs
  has_many :program_tags, :through => :user_programs
  has_many :tags, :through => :user_tags


  # Validations
  # -----------------------------
  # password must be present and at least 4 characters long, with a confirmation
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :if => :password_present?
  
  validates_presence_of :username
  validates_uniqueness_of :username, :email
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :message => "Username should only contain letters, numbers, or .-_@"

  # email must be unique and in proper format
  validates_presence_of :email
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([a-z0-9.-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i

 # def password
 #   @password ||= Password.new(password_hash)
 # end

 # def password=(new_password)
 #   @password = Password.create(new_password)
 #   self.password_hash = @password
 # end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end


