class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def show
  end
  
  def skill_view
    @skill = Skill.find_by name: params[:name]
    render 'show'
  end

  def new
    @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)
    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Tool has been created.' }
        format.json { render action: 'show', status: :created, location: @skill }
      else
        format.html { render action: 'new' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Tool has been  updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url }
      format.json { head :no_content }
    end
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:name, :description)
    end
end
