Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do 
    namespace :v1 do 
      resources :labels, param: :id
      resources :tasks, only: [:index, :show, :create, :destroy, :update]
    end 
  end 

  get '*path', to: 'pages#index', via: :all 
end
