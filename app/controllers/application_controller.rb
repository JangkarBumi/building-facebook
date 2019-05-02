# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def require_login
    redirect_to user_session_path unless current_user
  end
end
