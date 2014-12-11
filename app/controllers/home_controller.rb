require 'httparty'
require "base64"

class HomeController < ApplicationController
  
  def hello
                                 #DEV (:client_id     => "6969eaab25c99d040903",
                                 #:client_secret => "69868a6661379b0f1802d99f78ee95e7953c6116")
                                 
                                 #Heroku (:client_id     => "696d5200fd62d6d03d14",
                                 #:client_secret => "09142a11d387ec87d024d902cbbb0b0785374040")

    readme = HTTParty.get "https://api.github.com/repos/ChooChooo/I-want-an-iPad/readme?client_id=6969eaab25c99d040903&client_secret=69868a6661379b0f1802d99f78ee95e7953c6116"
    decoded_readme = Base64.decode64(readme.parsed_response["content"])
    @output = decoded_readme.gsub("== README", "")

    unless params["search_params"].blank?
      @search_term = params["search_params"]
      results = PgSearch.multisearch(@search_term)
      
      @results_tools = Hash.new
      @results_projects = Hash.new

      results.each do |result|
        if result.searchable_type == "Tool"
          @results_tools[result] = Tool.find(result.searchable_id, :select => :name)
        else
          @results_projects[result] = Project.find(result.searchable_id, :select => :name)
        end  
      end
    end

  end
  
end