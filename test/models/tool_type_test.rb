require 'test_helper'

class ToolTypeTest < ActiveSupport::TestCase
  test 'tool attributes must have values present' do
    tool_type = ToolType.new
    assert tool_type.invalid?
    assert tool_type.errors[:name].any?
    assert tool_type.errors[:description].any?
  end
end
