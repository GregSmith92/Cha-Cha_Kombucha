class KombuchaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      return true
    end

    def new?
      return true
    end

    def create?
      return true
    end

    def edit?
      record.user == user
    end

    def update?
      edit?
    end

    def destroy?
      record.user == user
    end
  end
end
