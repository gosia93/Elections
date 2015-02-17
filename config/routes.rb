Rails.application.routes.draw do
 
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :users
  resources :roles
  resources :committees
  resources :constituencies
  resources :results 
 # get 'sum' => 'results#sum', :name=> 'suma'
  
   authenticated :user do
    root :to => 'results#sum', as: :authenticated_root
  end
   
    root :to => 'welcome#index'


end

