Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resource :items, only: [:new, :create, :show, :edit, :update, :destroy]
  resource :users, only: [:new, :edit, :destroy, :create]
end  