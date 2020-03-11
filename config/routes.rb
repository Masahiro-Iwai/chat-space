Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root "messages#index"
  resources :users, only: [:edit, :update]
=======
#  root 'messages#index'
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
>>>>>>> Stashed changes
end
