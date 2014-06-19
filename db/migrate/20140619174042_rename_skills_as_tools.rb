class RenameSkillsAsTools < ActiveRecord::Migration
  def change
    rename_table :skills, :tools
  end
end
