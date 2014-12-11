class UserViewController < ApplicationController
  before_action :set_user_and_projects, only: [:show]

  def show

  end


  private

  def set_user_and_projects
    @user = User.find(params[:id])
    @projects = Project.where(owner: @user.username)
  end

end