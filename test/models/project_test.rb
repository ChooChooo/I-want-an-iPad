require 'test_helper'
require 'project'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'project attributes must not be empt' do
    project = Project.new
    assert project.invalid?
  end
end
