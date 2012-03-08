Todo2::Application.routes.draw do
  resources :lists

  devise_for :users

end

