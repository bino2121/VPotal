class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:name],email: params[:email],password: params[:password])
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました。"
      redirect_to("/")
    else
      render("users/new")
    end
  end
  def login_form
    
  end
  def login
    if @user = User.find_by(name: params[:name],password: params[:password])
      session[:user_id] = @user.id
      redirect_to("/")
      flash[:notice] = "ログインしました"
    else
      @error_message = "ユーザー名かパスワードに誤りがあります"
      render("users/login_form")
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to("/")
  end
end
