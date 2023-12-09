require "test_helper"

class BreakfastsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/breakfasts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Breakfast.count, data.length
  end
end
