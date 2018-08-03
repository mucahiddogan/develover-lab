class PartnersController < ApplicationController
	before_action :authenticate_partner!
	
	def dashboard
		@users=User.all
		@partners=Partner.all
	end
	def vote_inc
		@user = User.find(params[:id])
		@user.liked_by current_partner
		p "----------"
		p @user.votes_for.size

		status(@user)

		redirect_to partner_path
	end

	def status(user)
		@partners = Partner.all
		total = user.votes_for.size
		if (total > (@partners.count + 1)/2)
			user.status = true
			user.card_number= user.id + 1000000
			user.save
		end
	end

	def vote_dec
		@user = User.find(params[:id])
		@user.unliked_by current_partner
		p "----------"
		p @user.votes_for.size

		status(@user)

		redirect_to partner_path
	end


end
