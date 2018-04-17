class SessionsController < ApplicationController
  def create
    google_user = Google_user.from_omniauth(env["omniauth.auth"])
    session[:google_user_id] = google_user.id
    #Spremenil sem root_patj v home_path
    redirect_to home_path
  end

  def destroy
    session[:google_user_id] = nil
    #tu isto
    redirect_to home_path
  end
end
