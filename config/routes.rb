Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  	get'admins/dashboard'
	get 'main/index'
  	root 'main#index'
end
