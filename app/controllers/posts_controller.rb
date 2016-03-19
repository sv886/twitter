class PostsController < ApplicationController
  before_action do

    @current_user = User.find_by id: session[:user_id]
    if @current_user.blank?
      redirect_to login_path
    end
  end

  def index
    @posts = Post.all.order("created_at desc")
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    @post.text = params[:post][:text]
    if @post.user.id == session[:user_id]
      if @post.save
        redirect_to post_path(id: @post.id)
      else
        render :edit
      end
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.text = params[:post][:text]
    @post.user = @current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def delete
    @post = Post.find_by id: params[:id]
    @post.destroy
    redirect_to posts_path
  end
end
