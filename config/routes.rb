Rails.application.routes.draw do

  root :to => 'bootstrap#index'

  resources :points, only: [:index, :show, :create, :update]

  get '/*url' => 'bootstrap#index', :defaults => { :format => 'html' }
end
