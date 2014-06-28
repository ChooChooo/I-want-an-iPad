class ToolType < ActiveRecord::Base
  validates :name, :description, presence: true
  has_many :tools
end
