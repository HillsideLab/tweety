#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  devise_for :users
  root    'tweets#index'
  get     'tweets'      =>  'tweets#index'
  get     'tweets/new'  =>  'tweets#new'
  post    'tweets'      =>  'tweets#create'
  delete  'tweets/:id'  =>  'tweets#destroy'
  get     'users/:id'   =>  'users#show'
end