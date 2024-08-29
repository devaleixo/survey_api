require "test_helper"

class SurveysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get surveys_show_url
    assert_response :success
  end
end
