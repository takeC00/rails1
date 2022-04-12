Rails.application.routes.draw do
  get 'posts/index',to:'posts#index'
  
  resources :posts
end
