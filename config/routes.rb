Rails.application.routes.draw do
  match "/goals/", via: :get, to: "goals/goals#index", as: :goals
  match "/goals/", via: :post, to: "goals/goals#create"
  match "/goals/new", via: :get, to: "goals/goals#new", as: :new_goal
  match "/goals/:id", via: :get, to: "goals/goals#show", as: :goal
  match "/goals/:id/edit", via: :get, to: "goals/goals#edit", as: :edit_goal
  match "/goals/:id/edit", via: [:patch, :put], to: "goals/goals#update"

  root 'start#start'
end
