class SessionsController < ApplicationController
  def create
    google_user = Google_user.from_omniauth(env["omniauth.auth"])
    session[:google_user_id] = google_user.id
    redirect_to root_path
  end

  def destroy
    session[:google_user_id] = nil
    redirect_to root_path
  end
end
