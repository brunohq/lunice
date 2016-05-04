Rails.application.routes.draw do

    resources :links do
        resources :visits
    end

    get 'r/:slug(/:e)', to: 'redirect#show'

    root 'welcome#index'

end
