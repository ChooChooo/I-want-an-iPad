require 'test_helper'
require 'project'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'project attributes must have values present' do
    project = Project.new
    assert project.invalid?
    assert project.errors[:name].any?
    assert project.errors[:owner].any?
    assert project.errors[:description].any?
  end
end
