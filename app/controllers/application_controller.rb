class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :check_session_present
  def hello
    render html: "hello world!"
  end

  def check_session_present
    redirect_to root_path if !logged_in?
  end
end
