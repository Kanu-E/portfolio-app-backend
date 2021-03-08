Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :portfolios do
        resources :stock_transactions
      end
    end
  end
end
