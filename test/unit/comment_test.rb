require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "comment should have content" do
    comment = Comment.new
    comment.user = users(:user)
    comment.achievement = achievements(:test1)
    assert !comment.save
  end

  test "comment should have a user" do
    comment = Comment.new
    comment.content = "test"
    comment.achievement = achievements(:test1)
    assert !comment.save
  end

  test "comment should have a related achievement" do
    comment = Comment.new
    comment.content = "test"
    comment.user = users(:user)
    assert !comment.save
  end
end
