class CreateProjectsTools < ActiveRecord::Migration
  def change
    create_table :projects_tools do |t|
      t.integer :project_id
      t.integer :tool_id

      t.timestamps
    end

    remove_column :projects, :tools
  end
end
