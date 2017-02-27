class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 helper_method :current_user 

def current_user 
  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
end


def require_user 
  redirect_to '/login' unless current_user 
end


	
def require_staff 
  redirect_to '/' unless current_user.staff? 
end



def require_student 
  redirect_to '/' unless current_user.student? 
end

	
def require_admin 
  redirect_to '/' unless current_user.admin? 
end



end
