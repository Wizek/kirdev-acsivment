class UsersController < ApplicationController
  skip_authorization_check # barki regisztalhat

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def show
    @user = User.includes(:achievements).find(params[:id])
  end
end
