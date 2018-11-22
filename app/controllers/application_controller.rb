class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  # <%= csrf_meta_tag %> 
  
  def user_check
    if current_user.id != @q.user_id
      redirect_to :back
    end
  end
end
