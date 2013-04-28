require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login goes to login url" do
		get '/login'
		assert_response :success
	end

	test "that /logout goes to the root of our app" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register goes to register url" do
		get '/register'
		assert_response :success
	end

	test "that profile page show perfectly" do
		get 'jasonseifer'
		assert_response :success
	end

end
