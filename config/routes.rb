Rails.application.routes.draw do
  devise_for :partners
  	devise_for :admins
  	devise_for :users

	get'admins/dashboard'
	get 'admins/delete/:id', to: 'admins#delete', as: 'deleteuser'
	get 'main/index'
	root 'main#index'


end
