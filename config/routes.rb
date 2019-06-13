Rails.application.routes.draw do
  get '/', to: redirect('/blogs')

  resources :logs
  resources :favorites
  resources :posts
  resources :blogs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
