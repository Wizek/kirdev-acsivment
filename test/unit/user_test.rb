require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "default role should be user" do
    user = create_test_user
    assert user.save
    assert_not_nil user.role
    assert user.role == :user
  end

  test "should not save w/o password" do
    user = create_test_user_without_password
    assert !user.save
  end

  test "should not save w/o email" do
    user = create_test_user
    user.email = nil
    assert !user.save
  end

  test "role should be from a predefined list" do
    user = create_test_user
    user.role = :notexistingrole
    assert !user.save
  end

  test "has_role gives false for nil role" do
    user = User.new
    Roles.roles.each do |r|
      assert !user.has_role?(r)
    end
  end

end
