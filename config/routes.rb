Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, :only => [:create, :new, :index, :show]
  resources :users do
    resources :events, :only => [:index]
  end
  root to: 'events#index'
end
