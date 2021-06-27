Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'items#index'
  resource :items, only: [:new, :create, :show, :edit, :update, :destroy]
  resource :users, only: [:new, :edit, :destroy, :create]
end  