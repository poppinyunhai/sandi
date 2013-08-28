Haicms::Application.routes.draw do
  devise_for :users

  resources :types
  
  resources :products
  resources :yuyues
  resources :arts
  resources :mengs
  get 'success' => 'welcome#success'
  get 'err' => 'welcome#err'
  root to: "welcome#index"
  namespace :admin do
    root :to => 'products#new'
    resources :mengs
    resources :arts
    resources :brands
    resources :meets
    resources :types
    resources :yuyues
    resources :products
    resources :services
  end
end
