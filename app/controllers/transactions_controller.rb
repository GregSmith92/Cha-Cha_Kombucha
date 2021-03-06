class TransactionsController < ApplicationController

  skip_after_action :verify_authorized, only: [:show]

  def new
    @transaction = Transaction.new
    @kombucha = Kombucha.find(params[:kombucha_id])
    authorize @transaction
  end

  def create
    @user = current_user
    @kombucha = Kombucha.find(params[:kombucha_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.kombucha = @kombucha
    @transaction.user = @user
    authorize @transaction
    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
      render "new"
    end
  end

  def show
  end

  private

  def transaction_params
    params.require(:transaction).permit(:first_name, :last_name, :shipping_address, :card_number)
  end
end
