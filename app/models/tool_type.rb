class ToolType < ActiveRecord::Base
  validates :name, :description, presence: true
end
