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
    @post.save
  end
end
