require 'test_helper'
require 'rails/performance_test_help'

class UserModelTest < ActionDispatch::PerformanceTest
  def teardown
    User.all.destroy_all
  end

  test "password stretching inline" do
    Devise::Async::Stretch.enabled = false

    user = User.new(email: 'bob@example.com')
    user.password = "ReallyCompleXPassword"
  end

  test "password stretching in background" do
    Devise::Async::Stretch.enabled = true

    user = User.new(email: 'bob2@example.com')
    user.password = "ReallyCompleXPassword"
  end
end