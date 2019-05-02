# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login, only: %i[show]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    @friendship.save
  end

  def update; end

  def destroy
    @friendship = Friendship.where(user_id: params[:id])
                            .where(friend_id: current_user).first
    @friendship.destroy
  end
end
