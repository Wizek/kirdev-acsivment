class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :moderator
      # TODO
      can :read, :all
    elsif user.has_role? :user
      can :create, Achievement
      can :update, Achievement, :supervisor_id => user.id
      can :read, :all
    elsif user.has_role? :banned
      # TODO
    elsif
      can :read, :all
    end

  end
end
