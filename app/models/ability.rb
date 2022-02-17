class Ability
  include CanCan::Ability
  def initialize(user)
    can :manage, Category, user: user
    can :manage, Record, user: user
  end
end
