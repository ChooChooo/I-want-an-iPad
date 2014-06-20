class Project < ActiveRecord::Base

  belongs_to :project_type
  has_many :projects_tools, :inverse_of => :project
  has_many :tools, :through => :projects_tools

  accepts_nested_attributes_for :projects_tools, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  validates :name,
            :project_type_id,
            #:owner,
            :description, presence: true
end
