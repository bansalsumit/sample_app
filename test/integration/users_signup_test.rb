require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "njfj",
                                         email: "user@invalid.com",
                                         password:              "foobar",
                                         password_confirmation: "foobar" } }
    end
    #follow_redirect!
    assert_template 'users/new'
    #assert_select 'Name is too long (maximum is 5 characters)'
    #assert_select 'div#<CSS id for error explanation>'
    #assert_select 'div.<CSS class for field with error>'
  end
end
