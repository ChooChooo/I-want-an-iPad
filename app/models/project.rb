class Project < ActiveRecord::Base
  validates :name, :owner, :description, presence: true
end
