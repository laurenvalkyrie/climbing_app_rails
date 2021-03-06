Rails.application.routes.draw do
  devise_for :users
    devise_scope :user do
      authenticated :user do
        root :to => 'home#index', as: :authenticated_root
      end
      unauthenticated :user do
        root :to => 'devise/registrations#new', as: :unauthenticated_root
      end
    resources :home, only: [:index]
    resources :weathers
    resources :places do
      resources :routes

    end
  end
end
