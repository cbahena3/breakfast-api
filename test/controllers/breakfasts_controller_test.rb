require "test_helper"

class BreakfastsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/breakfasts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Breakfast.count, data.length
  end

  test "create" do
    assert_difference "Breakfast.count", 1 do
      post "/breakfasts.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/breakfasts/#{Breakfast.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "price"], data.keys
  end

  test "update" do
    breakfast = Breakfast.first
    patch "/breakfasts/#{breakfast.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
end
