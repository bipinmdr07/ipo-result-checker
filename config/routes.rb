Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/company-shares', to: 'company_shares#index'
  post '/ipo-results', to: 'ipo_results#result'
end
