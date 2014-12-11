class ToolType < ActiveRecord::Base
  include PgSearch

  attr_accessible :name, :description
  validates       :name, :description, presence: true

  has_many :tools
  
  multisearchable :against => [:name, :description]
  #multisearchable :against => [:description]
end
