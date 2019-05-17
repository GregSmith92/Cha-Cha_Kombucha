class KombuchasController < ApplicationController
  def index
    @kombuchas = Kombucha.all
  end

  def show
    @kombucha = Kombucha.find(params[:id])
  end

  def new
    @kombucha = Kombucha.new
  end

  def create
    @kombucha = Kombucha.new(kombucha_params)
    @kombucha.user = current_user
    if @kombucha.save
      redirect_to kombucha_path(@kombucha)
    else
      render "new"
    end
  end

  def edit
    @kombucha = Kombucha.find(params[:id])
  end

  def update
    @user = current_user
    @kombucha = Kombucha.find(params[:id])
    if @kombucha.update(kombucha_params)
      redirect_to @kombucha, notice: 'Cha-cha Kombucha successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @kombucha = Kombucha.find(params[:id])
    @kombucha.destroy
    redirect_to kombucha_path(@cocktail)
  end

  private

  def kombucha_params
    params.require(:kombucha).permit(:name, :price, :rating, :flavour, :photo)
  end
end
