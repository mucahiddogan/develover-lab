Rails.application.routes.draw do
  devise_for :partners
  	devise_for :admins
  	devise_for :users

	get'admins/dashboard'
	get'partner/dashboard' , to: 'partners#dashboard' , as:'partner'
	get 'admins/delete/:id', to: 'admins#delete', as: 'deleteuser'
	get 'partners/vote_inc/:id', to: 'partners#vote_inc', as: 'vote_inc'
	get 'main/index'
	root 'main#index'


end
