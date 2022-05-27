Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users
  #resources :user
  #resource :user, except: [:new, :create, :destroy]
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
