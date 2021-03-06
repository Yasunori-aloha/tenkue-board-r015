Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, except: [:index] do
    resources :likes, only: [:create, :destroy]
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :posts, only: [:show, :new, :create] do
    resources :comments, only: [:create, :destroy, :update, :edit]
  end
end
