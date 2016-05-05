Rails.application.routes.draw do

    resources :links, path: 'manage' do
        resources :visits
    end

    get ':slug(/:e)', to: 'redirect#show'

    root 'welcome#index'

end
