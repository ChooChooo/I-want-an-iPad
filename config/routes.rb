X::Application.routes.draw do
  
  resources :tool_types

  resources :project_types

  root :to => 'home#hello'
  
  match 'home' => 'home#hello', :via => :get, :as => :home
  match 'search' => 'home#hello', :via => [:get, :post], :as => :search

  resources :tools
  match 'tool/:name' => 'tools#tool_view', :via => :get, :as => :tool_detail
  
  resources :projects
end
