Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    root to: 'animals#index'
    resources :animals
  end
end
