Rails.application.routes.draw do
  #get 'home/index'

  root 'home#index'
  get "uapp",to:"uapp#new"
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  #delete "logout", to: "sessions#destroy"
  get "logout", to: "sessions#destroy"
 
  post "uapp", to:"uapp#validate"
  resources :users, except: [:new]

  get "create_admin", to:"admins#new"
  get "admin_login", to:"adminsessions#new"
  post "admin_login", to:"adminsessions#create"
  get "adapp", to:"adapp#new"
  get "admin_logout", to:"adminsessions#destroy"
  post "adapp", to:"adapp#validate"
  post "import",to:"adapp#import"
  resources :admins, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
