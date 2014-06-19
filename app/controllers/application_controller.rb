class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  
  def get_tools
    @tools = Tool.all
  end
  
end
