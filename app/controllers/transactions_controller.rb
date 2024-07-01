class TransactionsController < ApplicationController
  before_action :set_account

  def index
    @transactions = @account.transactions
    render json: @transactions
  end

  def show
    @transaction = @account.transactions.find(params[:id])
    render json: @transaction
  end

  def create
    @transaction = @account.transactions.new(transaction_params)
    if @transaction.save
      render json: @transaction, status: :created
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  def update
    @transaction = @account.transactions.find(params[:id])
    if @transaction.update(transaction_params)
      render json: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @transaction = @account.transactions.find(params[:id])
    @transaction.destroy
    head :no_content
  end

  private

  def set_account
    @account = Account.find(params[:account_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :transaction_type)
  end
end
