class Api::V1::StockTransactionsController < ApplicationController

    before_action :set_account

    def index 
        @stock_transactions = @portfolio.stock_transactions
        render json: @stock_transactions
    end

    def show
        @stock_transaction = StockTransaction.find(params[:id])
        render json: @stock_transaction
    end

    def create
        @stock_transaction = @account.transactions.new(stock_transaction_params)
        if @account.update_cash_balance(@transactions) !="Insufficient funds to carry out this transactio"
            @stock_transaction.save
            render json: @stock_transaction
        else
            render json: {error: "Insufficient funds to carry out this transaction"}
        end
    end

    private

    def set_account
        @portfolio =Portfolio.find(params[:portfolio_id])
    end

    def stock_transaction_params
    params.require(:stock_transaction).permit(:name, :stock_ticker, :transaction_type, :portfolio_id, :average_price, :quantity)
    end
end
