require 'test_helper'

class ToolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'tool attributes must have values present' do
    tool = Tool.new
    assert tool.invalid?
    assert tool.errors[:name].any?
    assert tool.errors[:description].any?
  end
end
