Rails.application.routes.draw do
  devise_for :users

  resources :hackathons, only: [:index, :create, :show]
  root 'entries#index'
  resources :entries
  get 'my_entries', to: 'entries#my_entries'

  #errors
  #get '/404', to: 'errors#not_found'
  #get '/500', to: 'errors#internal_server'
  #get '/422', to: 'errors#unprocessable'

  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server', via: :all
  match '/422', to: 'errors#unprocessable', via: :all

end
