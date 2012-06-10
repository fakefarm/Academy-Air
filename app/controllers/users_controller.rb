class UsersController < ApplicationController
	def new		
		@user = User.new
	end
	
	def create
		@user = User.create(params[:user])
		if @user.save
			flash[:notice] = "success!"
			redirect_to root_url
		else
			flash[:notice] = "Sorry!"
			redirect_to new_user_url
		end
	end
	
	def show
		@user = User.find(params[:id])
	end
		
end