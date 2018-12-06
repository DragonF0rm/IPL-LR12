class SessionController < ApplicationController
  def auth; end

  def login
    if user = User.authenticate(params[:login], params[:password])
      session[:current_user_id] = user.id
      redirect_to input_path
    else
      flash[:danger] = 'Wrong login or password'
      redirect_to auth_path
    end
  end

  def logout
    reset_session
    redirect_to session_auth_path
  end
end
