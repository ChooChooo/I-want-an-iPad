class Project < ActiveRecord::Base

  belongs_to :project_type

  validates :name,
            #:owner,
            :description, presence: true
end
