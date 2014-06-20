class AddCloumnProjecttypeDescription < ActiveRecord::Migration
  def change
    add_column :projects, :project_type, :int
  end
end
