class PostsController < ApplicationController
  def index
    @posts = Post.all
    p @posts
  end

  def show
    @post = Post.find(params[:id])
  end
end
