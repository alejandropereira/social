require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that should enter content" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "that should enter 2 character at least" do
  	status = Status.new
  	status.content = "A"
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "Status should have a user_id" do
  	status = Status.new
  	status.content = "Hello"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
end
