class TransactionsController < ApplicationController
  # before_action :set_transaction

  def index
  end

  def show
  end

  def new
    @transaction = Transaction.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_transaction
    @transaction = transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:fammember, :caregiver, :patient, :start_date)
  end
end
