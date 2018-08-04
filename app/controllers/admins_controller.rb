class AdminsController < ApplicationController
	before_action :authenticate_admin!

	def dashboard
		@users = User.all
		@partners = Partner.all
	end

	def users
		@users = User.all
		@references = User.all
		@partners = Partner.all
	end

	def pendingrequests
		@users = User.all
		@partners = Partner.all
	end

	def partners
		@partners = Partner.all
	end

	def delete
		@user = User.find(params[:id])
		if @user.delete	 
			redirect_to admins_dashboard_path, notice: "user deleted"
		end
	end	

	def deletepartner
	@partner = Partner.find(params[:id])
		if @partner.delete	 
			redirect_to admins_dashboard_partners_path
		end
	end

	def vote_dec
		@user = User.find(params[:id])
		@user.unliked_by current_admin

		status(@user)

		redirect_to admins_dashboard_request_path
	end

	def vote_inc
		@user = User.find(params[:id])
		@user.liked_by current_admin

		status(@user)

		redirect_to admins_dashboard_request_path
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

end
