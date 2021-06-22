Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only => [:show] do
    resources :events, only => [:create, :new, :show]
  end
  root to: 'events#index'
end
