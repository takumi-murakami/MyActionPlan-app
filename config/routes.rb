Rails.application.routes.draw do
  get 'plans/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'plans#index'

  resources :plans
end
