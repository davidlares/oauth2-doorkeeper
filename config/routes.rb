Rails.application.routes.draw do
  root :to => 'users#new'
  use_doorkeeper
  resources :courses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: "json" } do
    resources :courses, controller: :courses, only: [:index] # only show courses
  end

end
