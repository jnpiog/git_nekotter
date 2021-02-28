Rails.application.routes.draw do
  root 'practices#index'
    resources :practices, only: :create
end
