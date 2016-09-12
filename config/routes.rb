Rails.application.routes.draw do
  
    resources :projects do
    end
    
  resources :contacts
  resources :posts
  
  
  get 'welcome/index'
  root 'welcome#index'
  
  get '/projects' => 'projects#index'

  get '/posts' => 'posts#index'
  
  get '/contacts' => 'contacts#index'
  
end
