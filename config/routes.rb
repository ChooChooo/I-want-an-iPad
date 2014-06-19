X::Application.routes.draw do
  
  root :to => 'home#hello'
  
  match 'search' => 'home#hello', :via => [:get, :post], :as => :search
  
  resources :tools
  match 'tool/:name' => 'tools#tool_view', :via => :get, :as => :tool_detail
  
  resources :projects
end
