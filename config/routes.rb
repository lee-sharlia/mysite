Rails.application.routes.draw do
  resources :posts
  resources :projects
  resources :contacts
  
  
  get 'welcome/index'
  root 'welcome#index'
end
