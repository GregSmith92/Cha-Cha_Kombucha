Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get 'dashboard', to: 'users#dashboard', as: :dashboard
  resources :kombuchas do
    resources :transactions, only: [:new, :create]
  end
  resources :transactions, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


