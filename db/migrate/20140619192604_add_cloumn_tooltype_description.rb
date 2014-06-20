class AddCloumnTooltypeDescription < ActiveRecord::Migration
  def change
    add_column :tools, :tool_type, :description
  end
end
