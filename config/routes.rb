Rails.application.routes.draw do
	namespace :admin do
		resources :projects, except: [:show]
		get 'cancel', to: "projects#cancel"
	end
	get '/projects', to: "application#projects"
	root to: "application#home"
	get "/my-cv", to: "application#cv"
	resources "contacts", only: [:new, :create]
end
