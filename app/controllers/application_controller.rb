# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ApplicationHelper

  helper_method :current_user

  before_action :require_login

  private

  def require_login
    if session[:user_id].nil?
      flash[:error] = 'You must be logged in to access this section'
      redirect_to root_url
    end
  end

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
