class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:name],email: params[:email])
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました。"
      redirect_to("/")
    else
      render("users/new")
    end
  end
end
