Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :posts do
    resources :comments
  end

  resources :tags
  get 'posts/my_posts', to: 'posts#my_posts'
  root 'posts#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
