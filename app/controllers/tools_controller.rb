class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.all.order :name
  end

  def show
    @related_projects = get_related_projects(@tool.name)
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
    @tool = Tool.new(tool_params)
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
      if @tool.update(tool_params)
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_params
      params.require(:tool).permit(:name, :description)
    end

  def get_related_projects(tool)
    @results = Project.where("description or name like ?", "%#{tool}%")
  end
end
