RoutesApp::Application.routes.draw do  
  resources :products do
    resource :duplicate, :controller => 'duplicates', :only => [:new, :create]
  end
  
  # get 'products/duplicate/:id' => 'products#new_duplicate', :as => 'new_duplicate'
  # post 'products/duplicate/:id' => 'products#create_duplicate'
  
  root :to => 'products#index'
end
