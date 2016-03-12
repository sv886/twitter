class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
  end

  def edit
  end

  def update
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.text = params[:post][:text]
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def delete
  end
end
