class Ability
  include CanCan::Ability

  def initialize(user)
    # return unless user.present?

    can :manage, Record, author_id: user.id
    can :manage, Catagory, author_id: user.id
  end
end
