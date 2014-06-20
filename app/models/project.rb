class Project < ActiveRecord::Base

  belongs_to :project_type
  has_and_belongs_to_many :tools

  accepts_nested_attributes_for :tools, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  validates :name,
            :project_type_id,
            #:owner,
            :description, presence: true
end
