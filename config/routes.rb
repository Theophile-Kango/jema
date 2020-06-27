Rails.application.routes.draw do
  get 'pages/my_posts'
  get 'comments/create'
  get 'comments/destroy'
  resources :posts do
    resources :comments
  end

  resources :tags

  get 'post/my_posts', to: 'pages#my_posts'
  get 'post/pending', to: 'pages#pending_post'
  root 'posts#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
