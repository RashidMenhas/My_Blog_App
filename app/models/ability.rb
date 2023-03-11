class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all

    user ||= User.new # guest user (not logged in)

    if user.is?(:admin)
      can :manage, :all
    else
      can :destroy, Post, author: user
      can :destroy, Comment, author: user
      can :read, :all # user(not admin) can read all the blogs
    end
  end
end
