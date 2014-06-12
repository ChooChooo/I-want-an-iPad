require 'skill'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @skill_list = parse_skills
  end

  def new
    get_skills
    @project = Project.new
  end

  def edit
    get_skills
    @project_skills = parse_skills
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
      params[:project][:skills] = selected_skills + "," + new_skills
      puts params[:project][:skills]
      params.require(:project).permit(:name, :owner, :description, :skills)
    end
    
    def new_skills
      skills = Array.new
      params.each do |k,v|
        if k.is_a?(String) and k.include?("skill_name_")
          unless v.empty?
            desc_key = "skill_description_" + /\d/.match(k).to_s
            save_skill(v, params[desc_key])
            #if save success
            skills << v
            #end
          end
        end
      end 
      return skills.join(',')  
    end
    
    def selected_skills
      skills = Array.new
      params.each do |k,v|
        if v.is_a?(String) and v == "on"
          skills << k
        end
      end 
      return skills.join(',')
    end
    
    def parse_skills
      return @project.skills.split(",")
    end
    
    def save_skill(name, description)
      new_skills_hash = Hash.new
      new_skills_hash = {"name"=>name, "description"=>description}

      @skill = Skill.new(new_skills_hash)
      @skill.save
    end
end
