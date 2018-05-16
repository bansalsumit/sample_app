class PostsController < ApplicationController
    skip_before_action :check_session_present, :only => [:index]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
