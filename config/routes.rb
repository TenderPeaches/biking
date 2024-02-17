Rails.application.routes.draw do
    root "application#index"

    resources :bicycle_systems, only: %i[ show ]
end
