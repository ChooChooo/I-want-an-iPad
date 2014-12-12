class UsersProject < ActiveRecord::Base
  
  belongs_to :user, inverse_of: :users_projects
  belongs_to :project, :inverse_of => :users_projects

  attr_accessible :project_id, :user_id, :project, :user, :notes
  
  validates :project_id, :user_id, presence: true
end
