require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "User should enter first name" do
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?
	end

	test "User should enter last name" do
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?
	end

	test "User should enter profile name" do
		user = User.new
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end

	test "User should have a unique profile name" do
		user = User.new
		user.profile_name = users(:jason).profile_name
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end

	test "Profile name should be correctly formatted" do
		user = User.new
		user.profile_name = "My Profile Name"
		assert !user.save
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include?("Must be formatted correctly")
	end
end
