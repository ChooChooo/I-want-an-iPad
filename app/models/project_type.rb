class ProjectType < ActiveRecord::Base
  include PgSearch
  
  has_many :projects
  validates :name, :description, presence: true
  
  #multisearchable :against => [:name, :description]
  multisearchable :against => [:description]
end
