class Tool < ActiveRecord::Base
  has_and_belongs_to_many :projects
  validates :name, :description, presence: true
end
