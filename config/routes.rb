Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'blogs#index'
  resources :blogs do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end
