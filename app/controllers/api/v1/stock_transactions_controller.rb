class Api::V1::StockTransactionsController < ApplicationController

    before_action :set_account 
    def index 
        stock_transactions = @portfolio.transactions
        render json: stock_transactions
    end

    def show
        stock_transaction = StockTransaction.find(stock_transaction_params[:id])
        render json: stock_transaction
    end

    def create
        stock_transaction = @account.transactions.new(stock_transaction_params)
        if @account.update_cash_balance(@transactions) !="Insufficient funds to carry out this transactio"
            @transactions.save
            render json: stock_transaction
        else
            render json: {error: "Insufficient funds to carry out this transaction"}
        end
    end


    def update
 
    end

  

    private

    def set_account
        @portfolio =Portfolio.find(params[:portfolio_id])
    end

    def stock_transaction_params
        params.require(:stock_transaction).permit(:name, :)
    end
end
