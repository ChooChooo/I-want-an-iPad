class HomeController < ApplicationController
  
  def hello
    unless params["search_params"].blank?
      @search_term = params["search_params"]
      @results = Project.joins(:project_type).joins(:tools).where(
          'projects.description like ? or projects.name like ? or project_types.name like ? or tools.name like ?',
          "%#{@search_term}%", "%#{@search_term}%", "%#{@search_term}%", "%#{@search_term}%").distinct
    end
  end
  
end