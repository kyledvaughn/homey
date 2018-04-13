Rails.application.routes.draw do
#   Devise
    devise_for :users
    
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#index'
    
#   Stripe
    resources :charges
 
#   Google Calendar
    get '/redirect', to: 'home#redirect', as: 'redirect'
    get '/callback', to: 'home#callback', as: 'callback'   
end
