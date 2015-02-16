Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) 
  resources :results
  resources :committees
  resources :constituencies
  resources :users
  resources :roles
 
 devise_for :users
#  scope "/admini" do
  resources :users
 # end


 # resources :roles
 resources :committees
 resources :constituencies
 resources :results

 authenticated :user do
   

      root :to => 'constituencies#index', as: :authenticated_root
  end
      root :to => 'welcome#index'

 # get 'results/sum' 

  end

