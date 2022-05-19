require "test_helper"

class QuizStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get quiz_statuses_create_url
    assert_response :success
  end
end
