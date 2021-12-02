class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end
  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end
  def new
    
  end
  def create
    @post = Post.new(content: params[:text],user_id: session[:user_id])
    if @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
  def user_post
    #@post = Post.find_by(user_id: params[:user_id])
  end
end
