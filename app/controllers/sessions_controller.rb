class SessionsController < ApplicationController
  skip_before_action :require_login
  
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      log_in user
      redirect_to keys_url, notice: "#{user.name}さんがログインしました"
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to login_url, notice: 'ログアウトしました'
  end

  private
    def session_params
      params.permit(:email, :password)
    end
end
