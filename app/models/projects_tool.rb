class ProjectsTool < ActiveRecord::Base
  
  belongs_to :tool, inverse_of: :projects_tools
  belongs_to :project, :inverse_of => :projects_tools

  attr_accessible :project_id, :tool_id
  
  validates :project_id, :tool_id, presence: true
end
