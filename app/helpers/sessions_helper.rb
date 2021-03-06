module SessionsHelper
    def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    end

  def logged_in?
    !!current_user
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end
end
