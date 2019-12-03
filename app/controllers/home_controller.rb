class HomeController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
      @total_paid = Expense.where(status: 'pago').total
      @total_not_paid = Expense.where(status: 'nao').total 
      @bank_accounts = BankAccount.all
      @total = @bank_accounts.sum(:balance)
      @res =   @total = @bank_accounts.sum(:balance)- @total_paid = Expense.where(status: 'pago').total
  end
end



#rails g migration AddCandidateToElections candidate:references