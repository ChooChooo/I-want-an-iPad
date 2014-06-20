class Tool < ActiveRecord::Base
  has_many :projects_tools, :inverse_of => :tool
  has_many :projects, :through => :projects_tools
  validates :name, :description, presence: true
end
