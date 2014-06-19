class AddCloumnProjecttypeDescription < ActiveRecord::Migration
  def change
    add_column :projects, :project_type, :description, limit: 70
  end
end
