require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test "should be created with duplicate email" do
    user = User.new(email: @user.email, first_name: "test", phone_number: "123123132123")
    assert_not user.save
  end
end
