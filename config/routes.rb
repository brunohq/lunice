Rails.application.routes.draw do

    resources :links do
        resources :visits
    end

    get 'r/:slug', to: 'redirect#show'

    root 'welcome#index'

end
