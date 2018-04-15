Rails.application.routes.draw do

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :urls
    end
  end

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  #devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
   root to: 'urls#new'
   resources :urls, only: [:new, :create,:index]

   resources :users
end



