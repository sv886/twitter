class UsersController < ApplicationController

  def show
    @user = User.find_by(username: params[:username])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit( :username, :password, :password_confirmation, :photo)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      render :new
    end
  end

  def timeline
    user_id = session[:user_id]
    @current_user = User.find_by id: user_id
    follower_ids = @current_user.following_users.pluck(:id)
    all_ids = follower_ids << @current_user.id
    Post.where(user_id: all_ids).order("created_at DESC")
  end

  def follow
    @user = User.find_by(username: params[:username])
    user_id = session[:user_id]
    @current_user = User.find_by id: user_id
    if @current_user.present?
      @current_user.follow(@user)
    end
    redirect_to posts_path
  end

  def unfollow
    @user = User.find_by(username: params[:username])
    user_id = session[:user_id]
    @current_user = User.find_by id: user_id
    if @current_user.present?
      @current_user.unfollow(@user)
    end
    redirect_to posts_path
  end
end
