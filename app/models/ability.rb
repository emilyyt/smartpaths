class Ability
  include CanCan::Ability

  def initialize(user)
<<<<<<< HEAD
    # Define abilities for the passed in user here. For example:
    #
	user ||= User.new # guest user (not logged in)
	# set authorizations for different user roles
	if user.role? :admin
      # they get to do it all
		can :manage, :all
        # if user.admin?
			# can :manage, :all
		# else
			# can :read, :all
		# end
=======    
    elsif user.role? :user
		# they can read their own profile
		can :show, User
		# they can update their own profile
		can :update, User do |u|
			u.id == user.id
		end
		# they can make reviews
		can :create, Review
		# they can read reviews
		can :read, Review
		can :update, Review do |review|
			review.user_id == user.id
		end
		can :manage, UserTag do |t|
			user.id == t.user_id
		end
		can :manage, ProgramTag do |p|
#			p.program in user.programs
		end

    else
      # guests can read programs
      #can :read, Programs
      
      # guests can read institutions
      #can :read, Institutions
      
      # guests can read reviews
      #can :read, Reviews

      # guests can view tags
      #can :read, Tags

      # guests can create users
      can :create, User
    end
      
      
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
