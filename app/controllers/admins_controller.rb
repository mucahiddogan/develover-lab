class AdminsController < ApplicationController
	before_action :authenticate_admin!

	def dashboard
		@users=User.all

	end
end
