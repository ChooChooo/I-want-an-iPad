class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.all.order :name
  end

  def show
    @projects = @tool.projects
  end
  
  def tool_view
    get_related_projects(params[:name])
    render 'show'
  end

  def new
    @tool = Tool.new
  end

  def edit
  end

  def create
    @tool = Tool.new(:name => params[:tool][:name], :description => params[:tool][:description], :tool_type_id => params[:tool][:tool_type_id])

    respond_to do |format|
      if @tool.save
        format.html { redirect_to @tool, notice: 'Tool has been created.' }
        format.json { render action: 'show', status: :created, location: @tool }
      else
        format.html { render action: 'new' }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tool.update(:name => params[:tool][:name], :description => params[:tool][:description], :tool_type_id => params[:tool][:tool_type_id])
        format.html { redirect_to @tool, notice: 'Tool has been  updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tool.destroy
    respond_to do |format|
      format.html { redirect_to tools_url }
      format.json { head :no_content }
    end
  end

  private
  def set_tool
    @tool = Tool.find(params[:id])
  end

  def get_related_projects(tool)
    @results = Project.where("description like ?", "%#{tool}%").map {|project|
      Project.new(:name => project.name, :id => project.id, :description => project.description) }
  end
end
