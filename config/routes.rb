Rails.application.routes.draw do
  resources :restaurants do
    # Não precisa do :restaurant_id
    collection do
      get 'top'
    end
    # Precisa do :restaurant_id
    member do
      get 'chef'
    end
    # Nested resources
    resources :reviews, only: [:new, :create]
  end

  #Shallow nesting
  resources :reviews, only: [:index, :show]

  #Namespace para separar diferentes tipos de perfis de usuários
  namespace :admin do
    resources :restaurants
  end
end
