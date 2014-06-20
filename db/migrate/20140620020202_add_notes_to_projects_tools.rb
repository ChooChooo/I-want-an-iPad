class AddNotesToProjectsTools < ActiveRecord::Migration
  def change
    add_column :projects_tools, :notes, :text
  end
end
