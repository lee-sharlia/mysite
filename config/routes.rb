Rails.application.routes.draw do
  resources :posts
  resources :projects
  resources :contacts
  
  
  get 'welcome/index'
  root 'welcome#index'
  
  get '/projects' => 'projects#index'

  get '/posts' => 'posts#index'
  
  get '/contacts' => 'contacts#index'
  
end
