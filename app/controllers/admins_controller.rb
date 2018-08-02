class AdminsController < ApplicationController
	before_action :authenticate_admin!

	def dashboard
		@users=User.all

	end
	def delete
		@user = User.find(params[:id])
		@user.delete
		redirect_to admins_dashboard_path
	end
end
