require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a userfriendship works without raising an exception" do
  	assert_nothing_raised do
  		UserFriendship.create user: users(:jason), friend: users(:alejandro)
  	end
  end

  test "that creating a userfriendship by id works" do
  	assert_nothing_raised do
  		UserFriendship.create user_id: users(:jason).id, friend_id: users(:alejandro).id
  	end
  end
end
