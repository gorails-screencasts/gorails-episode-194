Rails.application.routes.draw do
  resources :users

  namespace :charts do
    get "new-users"
    get "by-month-users"
  end
end
