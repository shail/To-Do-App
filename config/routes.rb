Todo2::Application.routes.draw do
  resources :lists do
    resources :tasks
  end

  devise_for :users
  
  
  root :to => 'users#show'

end

