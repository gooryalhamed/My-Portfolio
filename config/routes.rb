Rails.application.routes.draw do
  resources :projects
  root to: "application#home"
  get "/my-cv", to: "application#cv"
  get "/my-projects", to: "application#projects"
  resources "contacts", only: [:new, :create]
end
