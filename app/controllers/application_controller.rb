class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    unless html_tag == "label"
      %(<div class="control-group error">#{html_tag}</div>).html_safe
    end
  end

  def store_return_url
    session[:return_url] = request.fullpath
  end

  def redirect_back_or_to(url)
    if session[:return_url]
      redirect_to session[:return_url]
      session[:return_url] = nil
    else
      redirect_to url
    end
  end

  protected

  # user as before filter
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

end
