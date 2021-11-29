class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
  def new
    
  end
  def create
    @post = Post.new(content: params[:text])
    if @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
end
