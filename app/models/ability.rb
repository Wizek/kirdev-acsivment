class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :moderator
      # TODO
    elsif user.has_role? :user
      can :create, Achievement
      can :update, Achievement, :creator_id => user.id
    elsif user.has_role? :banned
      # TODO
    else
      can :read, :all
    end

  end
end
