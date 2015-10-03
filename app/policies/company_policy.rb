class CompanyPolicy < ApplicationPolicy
  attr_reader :user, :company

  def initialize(user, company)
    @user = user
    @company = company
  end

  def index?      ; is_admin? ; end
  def show?       ; is_admin? ; end
  def create?     ; is_admin? ; end
  def new?        ; create? ; end
  def update?     ; is_admin? ; end
  def edit?       ; update? ; end
  def destroy?    ; is_admin? ; end

  def is_admin?
    true
  end
end