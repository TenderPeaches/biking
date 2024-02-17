Rails.application.routes.draw do
    root "application#index"

    resources :bicycle_systems, only: %i[ show ]
    resources :jobs, only: %i[ new ]
end
