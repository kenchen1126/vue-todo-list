Rails.application.routes.draw do
  
  #session
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #user
  resource :users, only: [:new, :create]
end
