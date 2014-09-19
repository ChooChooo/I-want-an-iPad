class ProjectType < ActiveRecord::Base
  include PgSearch
  
  has_many :projects

  attr_accessible :name, :description
  validates :name, :description, presence: true
  
  #multisearchable :against => [:name, :description]
  multisearchable :against => [:description]
end
