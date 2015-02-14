class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
      can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: :admin
    else
      can :manage, Committee
      can :manage,  Constituency
      can :manage, Result
      cannot :read, User
    end
  end
end
