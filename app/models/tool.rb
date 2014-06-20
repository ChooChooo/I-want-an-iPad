class Tool < ActiveRecord::Base
  has_many :projects_tools, :inverse_of => :tool, autosave: true
  has_many :projects, :through => :projects_tools, autosave: true

  validates :name, :description, presence: true
end
