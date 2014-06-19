require 'tool'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @tool_list = parse_tools
  end

  def new
    get_tools
    @project = Project.new
  end

  def edit
    get_tools
    @project_tools = parse_tools
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
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
      params[:project][:tools] = selected_tools + "," + new_tools
      puts params[:project][:tools]
      params.require(:project).permit(:name, :owner, :description, :tools)
    end
    
    def new_tools
      tools = Array.new
      params.each do |k,v|
        if k.is_a?(String) and k.include?("tool_name_")
          unless v.empty?
            desc_key = "tool_description_" + /\d/.match(k).to_s
            unless save_tool(v, params[desc_key]).nil?
              tools << v
            end
          end
        end
      end 
      return tools.join(',')
    end
    
    def selected_tools
      tools = Array.new
      params.each do |k,v|
        if v.is_a?(String) and v == "on"
          tools << k
        end
      end 
      return tools.join(',')
    end
    
    def parse_tools
      return @project.tools.split(",") unless @project.tools.nil?
      ''

      ###### Hey Alex!!!! Is this an okay fix? Your point-haired boss isn't sure! ###
    end
    
    def save_tool(name, description)
      @tool = Tool.find_by name: name
      if @tool.nil?
        new_tools_hash = Hash.new
        new_tools_hash = {"name"=>name, "description"=>description}
  
        @tool = Tool.new(new_tools_hash)
        @tool.save
        
        return name
      end
    end
end
