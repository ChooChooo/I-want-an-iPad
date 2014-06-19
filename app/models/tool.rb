class Tool < ActiveRecord::Base
  validates :name, :description, presence: true
end
