Rails.application.routes.draw do
  namespace :admin do
    resources :urls, only: %i(index show new create edit update destroy)
  end
  resources :urls
  delete 'urls/delete', to: 'urls#destroy'
  post 'urls/update', to: 'urls#update'
  get '/s/:slug', to: 'urls#show', as: :short
  get 'old_slugs', to: 'urls#old_slugs'
end
