Rails.application.routes.draw do

  resources :promocodes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
 # post 'add_promo', to: 'users#promo'
get 'users/promo', to: 'users#promo'
post 'add_promo', to: 'users#add_promo'
 # post 'promo', to: 'users#promo'
# get 'users/index'

 # collection do :users
   devise_for :users
   resources :users, only: :index

 # end


scope "(:locale)", :locale => /en|ar/ do

 resources :turnovers
 resources :home


  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
