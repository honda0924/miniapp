Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'blogs#index'
  resources :blogs
  resources :likes, only: [:create, :destroy]
  get 'users/:id' => 'users#show'
end
