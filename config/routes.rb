Rails.application.routes.draw do
 
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :users
  resources :roles
  resources :committees
  resources :constituencies

  resources :results do

    collection do

       get :sum

    end

  end

   authenticated :user do

    root :to => 'welcome#index_admin', as: :authenticated_root

  end

    root :to => 'welcome#index'   

end

