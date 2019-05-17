Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :kombuchas do
    member do
      get 'all_kombuchas', to: 'kombuchas#all_kombuchas', as: :all
    end
    resources :transactions, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


