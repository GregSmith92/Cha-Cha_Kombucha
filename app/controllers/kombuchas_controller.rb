class KombuchasController < ApplicationController
  def index
    @kombuchas = policy_scope(Kombucha)
  end

  def all_kombuchas
    @kombuchas = Kombucha.all
    authorize @kombuchas
  end

  def show
    @kombucha = Kombucha.find(params[:id])
    @transaction = Transaction.new
    authorize @kombucha
  end

  def new
    @kombucha = Kombucha.new
    authorize @kombucha
  end

  def create
    @kombucha = Kombucha.new(kombucha_params)
    @kombucha.user = current_user
    authorize @kombucha
    if @kombucha.save
      redirect_to kombucha_path(@kombucha)
    else
      render "new"
    end
  end

  def edit
    @kombucha = Kombucha.find(params[:id])
    authorize @kombucha
  end

  def update
    @user = current_user
    @kombucha = Kombucha.find(params[:id])
    authorize @kombucha
    if @kombucha.update(kombucha_params)
      redirect_to @kombucha, notice: 'Cha-cha Kombucha successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @kombucha = Kombucha.find(params[:id])
    authorize @kombucha
    @kombucha.destroy
    redirect_to kombucha_path(@cocktail)
  end

  private

  def kombucha_params
    params.require(:kombucha).permit(:name, :price, :rating, :flavour, :photo)
  end
end
