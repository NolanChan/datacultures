Rails.application.routes.draw do

  root :to => 'bootstrap#index'
  namespace :api do
    namespace :v1 do
      resources :points, only: [:index, :show, :create, :update]
    end
  end
  resources :points, only: [:index, :show, :create, :update]

  get '/*url' => 'bootstrap#index', :defaults => { :format => 'html' }
end
