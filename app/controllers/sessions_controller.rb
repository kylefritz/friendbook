class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find(params[:user_id])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Signed in as #{user.name}"
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You're signed out"
  end

end
