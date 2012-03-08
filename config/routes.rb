Todo2::Application.routes.draw do
  resources :lists
  resources :tasks

  devise_for :users
  
  root :to => 'users#show'

end

