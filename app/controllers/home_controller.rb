class HomeController < ApplicationController
  
  def hello
    unless params["search_params"].blank?
      @search_term = params["search_params"]

      @results = Project.where("description like ? or name like ?", "%#{@search_term}%", "%#{@search_term}%")
    end
  end
  
end