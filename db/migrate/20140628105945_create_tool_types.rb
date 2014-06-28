class CreateToolTypes < ActiveRecord::Migration
  def change
    create_table :tool_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    add_column :tools, :tool_type_id, :integer
  end
end
