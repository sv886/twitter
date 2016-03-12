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
      redirect_to root_path
    else
      render :new
    end
  end

end
