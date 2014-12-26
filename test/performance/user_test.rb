require 'test_helper'
require 'rails/performance_test_help'

class UserModelTest < ActionDispatch::PerformanceTest
  def teardown
    User.all.destroy_all
  end

  test "password salt" do
    user = User.new(email: 'bob@example.com')
    user.password = "ReallyCompleXPassword"
  end
end