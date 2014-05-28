X::Application.routes.draw do
  
  root :to => 'home#hello'
  
  resources :skills
  match 'skill/:name' => 'skills#skill_view', :via => :get,:as => :skill_detail
  
  resources :projects
end
