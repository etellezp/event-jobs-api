Rails.application.routes.draw do
  namespace :api do
    resources :profiles do
      resources :comments
    end
  end
end
