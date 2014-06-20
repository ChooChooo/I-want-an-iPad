class HomeController < ApplicationController
  
  def hello
    unless params["search_params"].blank?
      @search_term = params["search_params"]
      @results = Project.joins(:project_type).where("projects.description like ? or projects.name like ? or project_types.name like ?", "%#{@search_term}%", "%#{@search_term}%", "%#{@search_term}%")
    end
  end
  
end