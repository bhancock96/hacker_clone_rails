class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # @current_user.post.create(params[:post])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
