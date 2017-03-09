Rails.application.routes.draw do
  scope module: :api do
    namespace :v1 do
      resources :openions
      resources :projects
      resources :retrospectives
    end
  end
end
