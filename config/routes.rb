Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users   do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  scope "(:locale)", :locale => /en|ar/ do

    resources :turnovers
 resources :home


  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
