# encoding: UTF-8

class SessionsController < ApplicationController
  skip_authorization_check # barki belephet es kilephet

  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_back_or_to :root
    else
      flash.now.alert = "Érvénytelen felhasználónév vagy jelszó!" # TODO: kirakni valami resource fájlba
      render :new
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :root
  end
end
