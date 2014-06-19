X::Application.routes.draw do
  
  resources :project_types

  root :to => 'home#hello'
  
  resources :tools
  match 'tool/:name' => 'tools#tool_view', :via => :get,:as => :tool_detail
  
  resources :projects
end
