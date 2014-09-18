class HomeController < ApplicationController
  
  def hello
    unless params["search_params"].blank?
      @search_term = params["search_params"]
      @results = PgSearch.multisearch(@search_term)
    end
  end
  
end