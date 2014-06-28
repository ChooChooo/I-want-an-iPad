require 'tool'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order :name
  end

  def show

  end

  def new
    @project = Project.new
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
    @project.projects_tools.build
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    # @project.projects_tools.each { |t|  puts "PT Inspect: " + t.inspect }
    # @project.projects_tools = ProjectsTool.new(project_params[:projects_tools_attributes][0])

    respond_to do |format|
      if @project.save

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
    #todo: Fix this disgusting hack!
    @project.projects_tools.each { |project_tool| ProjectsTool.delete project_tool }
    project_tools = project_params[:projects_tools_attributes]
    puts project_tools
    project_tools.each do |project_tool|
      unless (project_tool[1][:_destroy] == '1')
        project_tool[1].delete :_destroy
        actual = ProjectsTool.new(project_tool[1])
        actual.project_id = @project.id
        actual.save
      end
    end
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
      @tools = Array.new
      
      params.each do |k,v|
        if k.is_a?(String) and k.include?("tool_name_")
          unless v.empty?
            desc_key = "tool_description_" + /\d/.match(k).to_s
            unless save_tool(v, params[desc_key]).nil?
              @tools << v
            end
          end
        end
      end 
      return @tools.join(',')
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
    
    def save_tool(name, description)
      @tool = Tool.find_by name: name
      if @tool.nil?
        new_tools_hash = {"name"=>name, "description"=>description}
  
        @tool = Tool.new(new_tools_hash)
        @tool.save
        
        return name
      end
    end
end
