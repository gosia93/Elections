Rails.application.routes.draw do


 # devise_for :admin_users, ActiveAdmin::Devise.config
 # ActiveAdmin.routes(self) 
 # resources :results
 # resources :committees
 # resources :constituencies
 # resources :users
 # resources :roles
 
 devise_for :users
 scope "/admin" do
  resources :users
  end

  resources :users
  resources :roles
 resources :committees
 resources :constituencies
 resources :results do
  member do
    get 'sum'
  end
 end 

 authenticated :user do
     root :to => 'welcome#index_admin', as: :authenticated_root
   end
      root :to => 'welcome#index'

  end

