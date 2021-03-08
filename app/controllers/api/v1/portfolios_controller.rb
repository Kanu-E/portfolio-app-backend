class Api::V1::PortfoliosController < ApplicationController
    def index 
        @portfolios = Portfolio.all
        render json: @portfolios
    end

    def create
        @portfolio = Portfolio.new(portfolio_params)
        if @portfolio.save
            render json: @portfolio
        else
            render json: {error: "Portfolio wasn't created"}
        end
    end

    def show
        @portfolio = Portfolio.find(params[:id])
        render json: @portfolio
    end


    def destroy
        @portfolio = Portfolio.find(params[:id])
        portfolio.destroy
    end

    private

    def portfolio_params
        params.require(:portfolio).permit(:name, cash_balance)
    end

end
