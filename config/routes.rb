#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
	devise_for :users
	root    'tweets#index'
	resources :tweets do
		resources :comments, only: [:create]
	end
	resources :users, only: [:show]
end