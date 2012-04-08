require 'test_helper'

class AchievementTest < ActiveSupport::TestCase

  test "default values" do
    assert_not_nil a = Achievement.create!(name: "test", acceptance: 10)
    assert a.suspended == false
    assert a.status == AchievementStatus::PUBLIC
  end

  test "status should be from a predifened list" do
    a = Achievement.create!(name: "test", acceptance: 10)
    a.status = 5
    assert !a.save
  end

  test "name should not be empty" do
    a = Achievement.new
    assert !a.save
  end

  test "acceptance should not be empty" do
    a = Achievement.new(name: "test")
    assert !a.save
  end

  test "acceptance should be greater than or equal to 1" do
    a = Achievement.new(name: "test", acceptance: 0)
    assert !a.save
  end

end
