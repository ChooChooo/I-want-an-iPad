class AddUglyNameToTool < ActiveRecord::Migration
  def change
    add_column :tools, :ugly_name, :string
  end
end
