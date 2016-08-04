Rails.application.routes.draw do 
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end#, :has_many => :comments

  match ':controller/:action/:id', via: [:get, :post] 
  match ':controller/:action/:id.:format', via: [:get, :post] 
  #get 'posts/index/' => 'posts#index'
  root "posts#index"
  get "posts/:id" => "posts#show"
end
