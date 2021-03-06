Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'new_post' => 'posts#new_post'
  get 'static_pages/about'
  post 'create_post' => 'posts#create_post'
  get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
