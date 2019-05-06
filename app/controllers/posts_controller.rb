# frozen_string_literal: true

class PostsController < ApplicationController
  def new; end

  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
  end

  def create
    @post = current_user.posts.build(post_params)
    redirect_to posts_path if @post.save
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
