class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end
end
