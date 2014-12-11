require 'octokit'

class HomeController < ApplicationController
  
  def hello
    client = Octokit::Client.new(:client_id     => ENV['GITHUB_CLIENT_ID'],
                                 :client_secret => ENV['GITHUB_CLIENT_SECRET'])
                                 
                                 #(:client_id     => "6969eaab25c99d040903",
                                 #:client_secret => "69868a6661379b0f1802d99f78ee95e7953c6116")
                                 #(:client_id     => "696d5200fd62d6d03d14",
                                 #:client_secret => "09142a11d387ec87d024d902cbbb0b0785374040")
  
    #owner 'ChooChooo'
    #repo 'I-want-an-iPad'
    
    @output = client.user 'btidwell'

  end
  
end