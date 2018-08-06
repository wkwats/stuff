Rails.application.routes.draw do


  resources :subco_invoices
  resources :subco_pos
  resources :accounts
  devise_for :users
 
  root to: "accounts#index"

  
end
