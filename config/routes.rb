RoutesApp::Application.routes.draw do
  # get 'products' => 'products#index', :as => 'products'  
  # get 'product/:id' => 'products#show', :as => 'product'
  # get 'product/:category/:id' => 'products#show', :as => 'category_product'
  
  resources :products
  # resources :products, :only => [:index, :show]

  root :to => 'products#index'
end
