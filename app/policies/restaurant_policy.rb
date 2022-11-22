class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all # => Restaurant.all
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  # def new?
  #   true    
  # end
  
  def create?
    true    
  end
  
  # def edit?
  #   user == record.user
  # end
  
  def update?
    user == record.user
  end
  
  def destroy?
    user == record.user
  end
end
