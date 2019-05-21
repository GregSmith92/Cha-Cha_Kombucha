class UsersController < ApplicationController
  def dashboard
    @user = current_user
    authorize @user
    @kombuchas = Kombucha.where(user: @user)
  end
end
