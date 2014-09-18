class ProjectsTool < ActiveRecord::Base
  include PgSearch
  
  belongs_to :tool, inverse_of: :projects_tools
  belongs_to :project, :inverse_of => :projects_tools

  validates :project_id, :tool_id, presence: true
  
  #multisearchable :against => [:project_id, :tool_id]
end
