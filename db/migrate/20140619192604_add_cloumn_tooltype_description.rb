class AddCloumnTooltypeDescription < ActiveRecord::Migration
  def change
    add_column :tools, :tool_type, :text
  end
end
