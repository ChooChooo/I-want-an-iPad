class Project < ActiveRecord::Base

  belongs_to :project_type

  validates :name,
            :project_type_id,
            #:owner,
            :description, presence: true
end
