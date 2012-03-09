Todo2::Application.routes.draw do
  resources :lists do
    resources :tasks do
      member do
        put "toggle_completed"
      end
    end
  end

  devise_for :users
  
  root :to => 'users#show'

end

