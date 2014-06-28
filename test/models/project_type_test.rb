require 'test_helper'

class ProjectTypeTest < ActiveSupport::TestCase
  test 'project type attributes must have values present' do
    project_type = ProjectType.new
    assert project_type.invalid?
    assert project_type.errors[:name].any?
    assert project_type.errors[:description].any?
  end
end
