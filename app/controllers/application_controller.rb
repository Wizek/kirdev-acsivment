class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization # force authorization in actions, DO NOT REMOVE THIS!!

  # masking errors on forms
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    %(<span class="control-group error">#{html_tag}</span>).html_safe
  end

  # authorization error handling
  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/403.html", :status => 403
  end

  protected

  # save an url for further use
  def store_return_url
    session[:return_url] = request.fullpath
  end

  # navigate back if available or to a specified location
  def redirect_back_or_to(url)
    if session[:return_url]
      redirect_to session[:return_url]
      session[:return_url] = nil
    else
      redirect_to url
    end
  end

  # use as before filter, checks for login
  def login_reguired
    if current_user.nil?
      store_return_url
      redirect_to login_path
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
