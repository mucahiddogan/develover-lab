class PartnersController < ApplicationController
	before_action :authenticate_partner!
	
	def dashboard
		@users=User.all
		@partners=Partner.all
	end
	def vote_inc
		@user = User.find(params[:id])
		@user.votes+=1
		@user.save
		status(@user)

		redirect_to partner_path
	end

	def status(user)
		@partners = Partner.all
		total = user.votes
		if (total > (@partners.count + 1)/2)
			user.status = true
			user.card_number= user.id + 1000000
			user.save
		end
	end

end
