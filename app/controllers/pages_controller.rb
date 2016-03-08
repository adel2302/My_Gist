class PagesController < ApplicationController

  def index
  end

	def show
	@user = User.find(params[:id])
	@gists = Gist.where(user_id: @user.id)
	end

	def new
	end	
end
