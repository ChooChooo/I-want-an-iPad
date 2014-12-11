X::Application.routes.draw do

  devise_for :users, :controllers => {:users => "registrations"}
  resources :tool_types

  resources :project_types

  root :to => 'home#hello'
  
  match 'home' => 'home#hello', :via => :get, :as => :home
  match 'search' => 'search#search', :via => [:get, :post], :as => :search
  match 'sign_in' => 'users#new', :via => :get, :as => :sign_in

  resources :tools
  match 'tool/:name' => 'tools#tool_view', :via => :get, :as => :tool_detail
  
  resources :projects
  match 'github' => 'projects#github', :via => :get, :as => :github
end
