require "test_helper"

class UnionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @union = unions(:one)
  end

  test "should get index" do
    get unions_url
    assert_response :success
  end

  test "should get new" do
    get new_union_url
    assert_response :success
  end

  test "should create union" do
    assert_difference('Union.count') do
      post unions_url, params: { union: { cities: @union.cities, members: @union.members, name: @union.name, prosperity: @union.prosperity, region: @union.region } }
    end

    assert_redirected_to union_url(Union.last)
  end

  test "should show union" do
    get union_url(@union)
    assert_response :success
  end

  test "should get edit" do
    get edit_union_url(@union)
    assert_response :success
  end

  test "should update union" do
    patch union_url(@union), params: { union: { cities: @union.cities, members: @union.members, name: @union.name, prosperity: @union.prosperity, region: @union.region } }
    assert_redirected_to union_url(@union)
  end

  test "should destroy union" do
    assert_difference('Union.count', -1) do
      delete union_url(@union)
    end

    assert_redirected_to unions_url
  end
end
