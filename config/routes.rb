Rails.application.routes.draw do
  namespace :api do
    namespace :V1 do
      resources :stock_transactions
      resources :portfolios
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
