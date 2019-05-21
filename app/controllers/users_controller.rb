class UsersController < ApplicationController
  def dashboard
    @user = current_user
    authorize @user
    @kombuchas = Kombucha.where(user: @user)
  end

  def add_rating
    @kombucha = Kombucha.find(params[:id])
  end

  #offer an edit of boocha on the card
  #capture the rating given
  #edit this on the controller



end
