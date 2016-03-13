class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit( :username, :password, :password_confirmation)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      render :new
    end
  end

  # def timeline
  #   follower_ids = following_users.pluck(:id)
  #   all_ids = follower_ids << user.id
  #   Post.where(user_id: all_ids).order("created_at DESC")
  # end
end
