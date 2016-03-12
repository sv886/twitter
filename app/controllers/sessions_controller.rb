class SessionsController < ApplicationController
  def new
  end

  def create
    # get user, validate pw, set session, then redirect
    username = params[:username]
    password = params[:password]

    user = User.find_by username: username
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to posts_path
    else
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end

end
