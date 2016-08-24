Rails.application.routes.draw do
  resources :posts
  resources :projects
  resources :contacts
  
  get 'contacts/index'
end
