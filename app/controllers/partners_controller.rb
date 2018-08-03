class PartnersController < ApplicationController
	before_action :authenticate_partner!
	
	def dashboard
		@users=User.all
	end

end
