Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  get 'register/new', to:'register#new'
  post 'signup',to:'register#signup'

  mount ActionCable.server, at: '/cable'
end
