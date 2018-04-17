class SessionsController < ApplicationController
  def create
    googleuser = Googleuser.from_omniauth(request.env["omniauth.auth"])
    session[:googleuser_id] = googleuser.id
    #Spremenil sem root_patj v home_path
    redirect_to home_path
  end

  def destroy
    session[:googleuser_id] = nil
    #tu isto
    redirect_to homes_path
  end
end
