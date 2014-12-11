class UserViewController < ApplicationController
  before_action :set_user_and_projects, only: [:show]

  def show

  end


  private

  def set_user_and_projects
    @user = User.find(params[:id])
    @projects = Project.where(owner: @user.username)
    set_tools_from_projects
  end

  def set_tools_from_projects
    @tools = []
    @projects.each do |project|
      project.tools.each do |tool|
        @tools.push tool
      end
    end
    @tools = @tools.uniq
  end

end