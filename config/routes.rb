Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      resources :albums, except: [:index] do
        collection do
          get "/", action: :list
        end
        resources :photos
      end

      root 'albums#list', as: :authenticated_root
    end
  
    # unauthenticated do
    #   root 'devise/sessions#new', as: :unauthenticated_root
    # end
  end

  

  root to: "albums#list"
end

# https://stackoverflow.com/questions/4954876/setting-devise-login-to-be-root-page