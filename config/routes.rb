Rails.application.routes.draw do
  
  devise_for :admins
  devise_for :users
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
