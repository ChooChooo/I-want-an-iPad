class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    add_column :projects, :project_type, :integer
  end
end
