class RenameProjectSkillsAsTools < ActiveRecord::Migration
  def change
    rename_column :projects, :skills, :tools
  end
end
