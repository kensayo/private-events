Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/:id' => 'users#show'
  resources :events, :only => [:index, :show, :create, :new, :index]
  root to: 'events#index'
end
