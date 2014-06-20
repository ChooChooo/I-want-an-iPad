class ProjectsToolsJoinRelationships < ActiveRecord::Migration
  def change
    add_belongs_to :projects_tools, :projects
    add_belongs_to :projects_tools, :tools
  end
end
