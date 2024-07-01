class AccountsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    @accounts = Account.all
    render json: @accounts
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      render json: @account, status: :created
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      render json: @account
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    head :no_content
  end

  private

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
