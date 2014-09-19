class Project < ActiveRecord::Base
  include PgSearch

  belongs_to :project_type

  has_many :projects_tools, :inverse_of => :project, autosave: true
  has_many :tools, :through => :projects_tools

  accepts_nested_attributes_for :projects_tools, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :tools, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  attr_accessible :name, :description, :projects_tools, :project_type
  validates :name,
            :project_type_id,
            #:owner,
            :description, presence: true
            
  multisearchable :against => [:description]
end
