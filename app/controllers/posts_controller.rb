class PostsController < ApplicationController
  
  def index
    render :index
  end

  def new
    render :new
  end
  
  def create
    redirect_to 'posts/new'
  end
  
end
