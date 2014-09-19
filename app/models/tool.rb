class Tool < ActiveRecord::Base
  include PgSearch

  belongs_to :tool_type

  has_many :projects_tools, :inverse_of => :tool, autosave: true
  has_many :projects, :through => :projects_tools, autosave: true

  attr_accessible :name, :description, :tool_type_id
  validates :name, :description, :tool_type_id, presence: true
  
  #multisearchable :against => [:name, :description]
  multisearchable :against => [:description]
end
