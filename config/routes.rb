Rails.application.routes.draw do
  namespace :goals do
    resources :goals
  end
  root 'start#start'
end
