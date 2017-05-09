# File for UserPolicy class
class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def destroy?
    @current_user.has_role? :admin
  end

  def admin_list?
    @current_user.has_role? :admin
  end
end
