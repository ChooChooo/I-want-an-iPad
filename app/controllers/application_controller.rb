class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  
  def get_skills
    @skills = Skill.all
  end
  
end
