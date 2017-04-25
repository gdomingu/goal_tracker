Rails.application.routes.draw do
  match "/goals/", via: :get, to: "goals/goals#index", as: :goals
  match "/goals/", via: :post, to: "goals/goals#create"
  match "/goals/new", via: :get, to: "goals/goals#new", as: :new_goal
  match "/goals/:id", via: :get, to: "goals/goals#show", as: :goal
  match "/goals/:id/edit", via: :get, to: "goals/goals#edit", as: :edit_goal
  match "/goals/:id", via: [:patch, :put], to: "goals/goals#update"
  match "/goals/:id", via: :delete, to: "goals/goals#destroy"
  match "/settings", via: :get, to: 'start#settings'
  match "/profile", via: :get, to: 'start#profile'
  match "/help", via: :get, to: 'start#help'

  root 'start#start'
end
