Rails.application.routes.draw do

  devise_for :members do
  get '/members/sign_out' => 'devise/sessions#destroy'
end
  devise_for :admins
  devise_for :users   do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  scope "(:locale)", :locale => /en|ar/ do

    resources :turnovers
    resources :dashboard
 resources :home

  resources :peals

  resources :personals
  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
