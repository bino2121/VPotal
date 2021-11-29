class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end
  def show
    @posts = Post.find_by(id: params[:id])
  end
  def create
    
  end
end
