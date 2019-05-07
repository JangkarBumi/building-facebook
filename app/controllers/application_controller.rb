# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :friendships

  def friendships
    @friendships = Friendship.where(['friend_id = :friend_id',
      { friend_id: current_user.id }]).pending if current_user
  end


  def require_login
    redirect_to user_session_path unless current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name photo city])
  end
end
