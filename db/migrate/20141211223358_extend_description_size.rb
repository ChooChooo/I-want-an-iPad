class ExtendDescriptionSize < ActiveRecord::Migration
  def change
    change_column :tool_types, :description, :text
  end
end
