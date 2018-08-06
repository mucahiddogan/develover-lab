Rails.application.routes.draw do
  devise_for :partners
  	devise_for :admins
  	devise_for :users

	get'admins/dashboard'
	get 'admins/dashboard/users',to: 'admins#users' 
	get 'admins/dashboard/partners',to: 'admins#partners'
	get 'admins/dashboard/request',to: 'admins#pendingrequests'
	get 'admins/dashboard/report',to: 'admins#report'
	get 'admins/dashboard/invite',to: 'admins#invite'
	get 'admins/delete/:id', to: 'admins#delete', as: 'deleteuser'
	get 'admins/delete_partner/:id', to: 'admins#deletepartner', as: 'deletepartner'
	get 'admins/vote_inc/:id', to: 'admins#vote_inc', as: 'admin_inc'
	get 'admins/vote_dec/:id', to: 'admins#vote_dec', as: 'admin_dec'

	get'partner/dashboard' , to: 'partners#dashboard' , as:'partner'
	get 'partners/vote_inc/:id', to: 'partners#vote_inc', as: 'vote_inc'
	get 'partners/vote_dec/:id', to: 'partners#vote_dec', as: 'vote_dec'

	get 'main/index'
	root 'main#index'

	get 'users/show'

end
