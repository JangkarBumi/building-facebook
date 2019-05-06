# frozen_string_literal: true

class PostsController < ApplicationController

  def new
    @post = Post.new
  end
  
  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.build(params[:body])
    if @post.save
      redirect_to posts_path
    else
      redirect_to user_path(current_user)
    end
  end


end
