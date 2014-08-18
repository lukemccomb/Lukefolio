class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

end


# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.