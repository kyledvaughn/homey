Rails.application.routes.draw do
  concern :active_scaffold_association, ActiveScaffold::Routing::Association.new
  concern :active_scaffold, ActiveScaffold::Routing::Basic.new(association: true)
  resources :groups, concerns: :active_scaffold
#   Devise
    devise_for :users
    
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#index'
    get 'home/groups'
    post "home/goups" => 'home/groups'
#   Stripe
    resources :charges
 
#   Google Calendar
    get '/redirect', to: 'home#redirect', as: 'redirect'
    get '/callback', to: 'home#callback', as: 'callback'   
end
