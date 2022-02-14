class Ability
  include CanCan::Ability

  # def initialize(user)
  #   can :manage, Category, user_id: user.id
  #   can :manage, Record, user_id: user.id
  # end
end
