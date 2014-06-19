class HomeController < ApplicationController
  
  def hello
    unless params["search_params"].blank?
      @search_term = params["search_params"]

      @results = Project.where("description like ?", "%#{@search_term}%")
      puts "????????????????"
      puts @results
      puts "????????????????"
      #results = projects.where("description" LIKE @search_term)
    end
  end
  
end