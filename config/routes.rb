Rails.application.routes.draw do
	get 'sessions/new'
	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
	resources :candidats, :companies
	root to: 'visitors#index'
end
