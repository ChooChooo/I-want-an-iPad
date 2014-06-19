class AddCloumnTooltypeDescription < ActiveRecord::Migration
  def change
    add_column :tools, :tool_type, :description, limit: 70
  end
end
