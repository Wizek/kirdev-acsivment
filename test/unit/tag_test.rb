require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "tag should have a name" do
    tag = Tag.new
    assert !tag.save
  end

  test "type should be from a predefined list" do
    tag = Tag.new(:name => "test")
    tag.tag_type = -1
    assert !tag.save
  end
  
  test "tag should be REGULAR type as default" do
    tag = Tag.new(:name=>"test")
    tag.save
    assert tag.tag_type == TagType::REGULAR
  end
end
