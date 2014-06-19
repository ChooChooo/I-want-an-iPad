X::Application.routes.draw do
  
  root :to => 'home#hello'
  
  resources :tools
  match 'tool/:name' => 'tools#tool_view', :via => :get,:as => :tool_detail
  
  resources :projects
end
