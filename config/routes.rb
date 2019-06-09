# Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :categories, only: [:index, :show]
        resources :comments, only: [:index, :create, :show]
      end
    end
  end
# end
