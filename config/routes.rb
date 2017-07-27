Rails.application.routes.draw do
  root to: "application#home"
  get "/my-cv", to: "application#cv"
  get "/my-projects", to: "application#projects"
  resources "contacts", only: [:new, :create]
end
