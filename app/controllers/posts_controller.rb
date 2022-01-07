class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  def confirm
  end

  def edit
  end
end
