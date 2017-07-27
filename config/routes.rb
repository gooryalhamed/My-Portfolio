Rails.application.routes.draw do
  root to: "application#home"
  get "/my-cv", to: "application#cv"
  get "/contact-me", to: "application#contact"
  get "/my-projects", to: "application#projects"
  resources "contacts", only: [:new, :create]
end
