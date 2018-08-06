class UsersController < ApplicationController
	def show
		@user =  User.all
		#@user = User.find(params[:id])
		#puts @user.email
		@qr = RQRCode::QRCode.new("asdfhgash") #referance code daki değer alınacak.
     	#@user = User.find(params[:id])
     	#@qr = RQRCode::QRCode.new(@user.provisioning_uri("Develoverteam"), :size => 7, :level => :h )
   end
end
