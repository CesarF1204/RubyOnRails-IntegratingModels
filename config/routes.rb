Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  get 'users/:id/edit' => 'users#edit'
  post 'create' => 'users#create'
  get 'users/total' => 'users#totalUser'
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
