class ProjectsTool < ActiveRecord::Base
  belongs_to :tool, inverse_of: :projects_tools
  belongs_to :project, :inverse_of => :projects_tools
end
