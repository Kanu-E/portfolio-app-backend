class Api::V1::TradesController < ApplicationController

    before_action :set_portfolio

    def index 
        @trades = @portfolio.trades
        render json: @trades
    end

    def show
        @trade = Trade.find(params[:id])
        render json: @trade
    end

    def create
        # binding.pry
        @trade = @portfolio.trades.new(trade_params)
        # binding.pry
        if @portfolio.update_cash_balance(@trade) !="Insufficient funds to carry out this trade"
            @trade.save
            render json: @portfolio
        else
            render json: {error: "Insufficient funds to carry out this trade"}
        end
    end

    private

    def set_portfolio
        @portfolio =Portfolio.find(params[:portfolio_id])
    end

    def trade_params
    params.require(:trade).permit(:name, :stock_ticker, :trade_type, :portfolio_id, :average_price, :quantity)
    end
end
