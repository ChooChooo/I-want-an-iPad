class UserProjectAssociation < ActiveRecord::Migration
  def change
    create_table :users_projects do |t|
      t.integer :project_id
      t.integer :user_id
      t.timestamps
    end

    add_belongs_to :users_projects, :users
    add_belongs_to :users_projects, :projects
  end
end
