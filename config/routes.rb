Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get '/inquiries/new', to: 'inquiries#new', as: 'new_inquiry'
  post '/inquiries', to: 'inquiries#create'

  get '/case', to: 'pages#case_study', as: 'case_study'
  get '/our_team', to: 'pages#our_team', as: 'our_team'
  resources :application
  resources :pages
  resources :inquiries

end
