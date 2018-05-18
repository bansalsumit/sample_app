class StaticPagesController < ApplicationController
  skip_before_action :check_session_present, :only => [:home]

  def home
  end

  def help
  end

  def about

  end

  def contact

  end
  def show
  end
end
