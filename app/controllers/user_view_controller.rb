class UserViewController < ApplicationController
  before_action :set_user_and_projects, only: [:show]

  def show
    require 'digest/md5'
    # create the md5 hash
    hash = Digest::MD5.hexdigest(@user.email)

    # compile URL which can be used in <img src="RIGHT_HERE"...
    @gravatar_src = "http://www.gravatar.com/avatar/#{hash}"
  end


  private

  def set_user_and_projects
    @user = User.find(params[:id])
    @projects = @user.projects
    set_tools_from_projects
  end

  def set_tools_from_projects
    if @projects.present?
      @tools = @projects.first.tools
    end
  end
end