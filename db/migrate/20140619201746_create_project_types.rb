class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.text :name
      t.text :description

      t.timestamps
    end

    add_column :projects, :project_type_id, :integer
  end
end
