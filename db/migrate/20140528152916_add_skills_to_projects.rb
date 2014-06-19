class AddSkillsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :tools, :string
  end
end
