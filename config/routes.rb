Rails.application.routes.draw do
  root 'users#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  resources :pictures do
    collection do
      post :confirm
    end
    member do
      patch :confirm  # confirm_pictures_pathの生成に必要
    end
  end
end
