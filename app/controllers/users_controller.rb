class UsersController < ApplicationController
  def new
    
  end
  def create
    @user = User.new(name: params[:name],email: params[:email])
    redirect_to("/")
  end
end
