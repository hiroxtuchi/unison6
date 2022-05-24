Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users
  #resources :user
  #resource :user, except: [:new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
