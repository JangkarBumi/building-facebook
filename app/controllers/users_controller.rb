# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login, only: %i[show index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def update; end

  def destroy
    @friendship = Friendship.where(user_id: params[:id])
                            .where(friend_id: current_user).first
    @friendship.destroy
  end
end
