# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:body])
    @post.save
  end

  def new
  end
end
