require 'test_helper'

class ThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thing = things(:one)
  end

  test "should get index" do
    get things_url
    assert_response :success
  end

  test "should create thing" do
    assert_difference('Thing.count') do
      post things_url, params: { thing: { name: @thing.name, parts: @thing.parts, price_cents: @thing.price_cents } }
    end

    assert_response 201
  end

  test "should show thing" do
    get thing_url(@thing)
    assert_response :success
  end

  test "should update thing" do
    patch thing_url(@thing), params: { thing: { name: @thing.name, parts: @thing.parts, price_cents: @thing.price_cents } }
    assert_response 200
  end

  test "should destroy thing" do
    assert_difference('Thing.count', -1) do
      delete thing_url(@thing)
    end

    assert_response 204
  end
end
