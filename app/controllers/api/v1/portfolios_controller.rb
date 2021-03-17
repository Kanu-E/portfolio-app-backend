class Api::V1::PortfoliosController < ApplicationController
    def index 
        @portfolios = Portfolio.all 
        render json: @portfolios
    end

    def create
        # binding.pry
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

    def update   
        @portfolio = Portfolio.find(params[:id])
        @portfolio.update(portfolio_params)
        @portfolio.save
        render json: @portfolio
    end


    def destroy
        binding.pry
        @portfolio = Portfolio.find(params[:id])
        # binding.pry
        @portfolio.destroy
    end

    private
    def set_portfolio
        @portfolio =Portfolio.find(params[:portfolio_id])
    end

    def portfolio_params
        params.require(:portfolio).permit(:name, :cash_balance)
    end

end
