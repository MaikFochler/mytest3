require "test_helper"

class TitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get titles_index_url
    assert_response :success
  end
end
