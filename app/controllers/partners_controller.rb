class PartnersController < ApplicationController
	before_action :authenticate_partner!
	
	def dashboard
		@users=User.all
		@partners=Partner.all
	end
	def vote_inc
		@user = User.find(params[:id])
		@user.liked_by current_partner

		status(@user)

		redirect_to partner_path
	end

	def status(user)
		@partners = Partner.all
		total = user.votes_for.size
		if (total > (@partners.count + 1)/2)
			user.status = true
			user.card_number = user.id + 1000000
			user.referance_id=random_string
			user.save
		end
		random_string
	end

	def vote_dec
		@user = User.find(params[:id])
		@user.unliked_by current_partner

		status(@user)

		redirect_to partner_path
	end

	def random_string
		o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
		string = (0...10).map { o[rand(o.length)] }.join
		return string
	end


end
