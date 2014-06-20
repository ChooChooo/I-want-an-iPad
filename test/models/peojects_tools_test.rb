require 'test_helper'

class PeojectsToolsTest < ActiveSupport::TestCase
  test 'project_tools attributes must have values present' do
    project = ProjectsTool.new
    assert project.invalid?
    assert project.errors[:project_id].any?
    assert project.errors[:tool_id].any?
  end
end
