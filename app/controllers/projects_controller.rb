require 'tool'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order :name
  end

  def show
    @tools = @project.tools
  end

  def new   
    @project = Project.new
    @project.projects_tools.build
    @tools = Tool.all.order :name
    @tool_types = ToolType.all.order :name
  end
  
  def github
    
  end

  class GitHubProjectImporter
    attr_accessor :repo_owner, :repo_name

    def initialize(repo_path)
      args = repo_path.split('/')
      @repo_owner = args[0]
      @repo_name = args[1]
    end

    def read_me
      HTTParty.get "https://api.github.com/repos/#{repo_path}/readme?client_id=#{@client_id}&client_secret=#{@client_secret}"
    end

    def read_me_decoded
      Base64.decode64(read_me.parsed_response['content'])
    end

    def gem_file
      HTTParty.get "https://api.github.com/repos/#{repo_path}/contents/Gemfile?client_id=#{@client_id}&client_secret=#{@client_secret}"
    end

    def gem_file_decoded
      Base64.decode64(gem_file.parsed_response["content"]).to_s.gsub('"',"'").to_s.gsub("\n",' ').to_s.gsub(",",' ')
    end

    def project
      result = Project.new
      result.name = repo_name
      result.owner = repo_owner
      result.external = true
      result.project_type = ProjectType.where(:name => 'Web Application').first
      result.description = read_me_decoded
      result
    end

    def gems
      unless gem_file.parsed_response['content'].nil?
        gem_array = gem_file_decoded.scan(/gem \'.*?\'/)
        result = Array.new
        gem_array.each do |gem|
          gem = /\'.*?\'/.match(gem)
          result << gem.to_s.gsub("'",'')
        end
        result
      else
        nil
      end
    end

    private
      @client_id = ENV['GITHUB_CLIENT_ID']
      @client_secret = ENV['GITHUB_CLIENT_SECRET']

      def repo_path
        "#{repo_owner}/#{repo_name}"
      end
  end

  def gh_create
    unless params['gh_user_repo'].blank?
      importer = GitHubProjectImporter.new(params['gh_user_repo'])
      @gem_project =  importer.project
      @gems = importer.gems
      create
    else
      redirect_to github_path
    end
  end

  def edit
    @existing_tools = Array.new
    @project.projects_tools.each do |t|
      @existing_tools << t.tool_id
    end
    @tools = Tool.all.order :name
    @tool_types = ToolType.all.order :name
  end

  def create
    @project = @gem_project || Project.new(:name => params[:project][:name],
          :owner => current_user[:username],
          :description => params[:project][:description],
          :project_type_id => params[:project][:project_type_id])
    
    @tool_types = ToolType.all.order :name

    respond_to do |format|
      if @project.save

        UsersProject.new(:user => current_user, :project => @project).save

        set_tools

        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_tools
    selected_tools
    new_tools
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        set_tools
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(
          :name,
          :owner,
          :description,
          :project_type_id,
          :projects_tools_attributes => [:project_id, :tool_id, :notes, :_destroy])
    end
    
    def new_tools
      begin
        if @gem_project.nil?
          params[:project][:tool].require(:name, :description)
        end
      rescue ArgumentError
        return
      end
      if @gem_project.nil?
        unless save_tool(params[:project][:tool]).nil?
          project_tool = ProjectsTool.find_or_create_by(:project_id=>@project.id ,:tool_id=>@tool.id)
        end
      elsif !@gems.nil?
        @gems.each do |g|
          save_gh_tool(g)
          project_tool = ProjectsTool.find_or_create_by(:project_id=>@project.id ,:tool_id=>@tool.id)
        end
      end
    end
    
    def selected_tools
      params.each do |k,v|
        if v.is_a?(String) and v == "on"
          ProjectsTool.find_or_create_by(project_id: @project.id, tool_id: k)
        end
      end 
    end
    
    def save_tool(tool_params)
      @tool = Tool.find_by(name: tool_params[:name]) || Tool.find_by(ugly_name: tool_params[:name])
      if @tool.nil?
        @tool = Tool.create(tool_params)
      end
    end
    
    def save_gh_tool(gem)
      @tool = Tool.find_by(name: gem) || Tool.find_by(ugly_name: gem)
      if @tool.nil?
        tool_type = ToolType.where(:name => 'Scripting Language').first
        @tool = Tool.create(:name => gem, :description => 'Ruby gem', :tool_type => tool_type)
      end
    end
end
