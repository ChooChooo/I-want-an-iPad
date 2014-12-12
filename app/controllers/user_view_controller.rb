class UserViewController < ApplicationController
  before_action :set_user_and_projects, only: [:show]

  def show

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