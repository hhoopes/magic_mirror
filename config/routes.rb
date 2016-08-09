Rails.application.routes.draw do
  root to: "static_pages#index"
  namespace :api, defaults: { format: :json }  do
    namespace :v1 do
      # resources :motds, only: [:index]
      get "/motds/current", to: "motds/current#index"
    end
  end
end
