Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :kombuchas do
    resources :transactions, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
