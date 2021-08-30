require "test_helper"

class RorusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roruser = rorusers(:one)
  end

  test "should get index" do
    get rorusers_url
    assert_response :success
  end

  test "should get new" do
    get new_roruser_url
    assert_response :success
  end

  test "should create roruser" do
    assert_difference('Roruser.count') do
      post rorusers_url, params: { roruser: {  } }
    end

    assert_redirected_to roruser_url(Roruser.last)
  end

  test "should show roruser" do
    get roruser_url(@roruser)
    assert_response :success
  end

  test "should get edit" do
    get edit_roruser_url(@roruser)
    assert_response :success
  end

  test "should update roruser" do
    patch roruser_url(@roruser), params: { roruser: {  } }
    assert_redirected_to roruser_url(@roruser)
  end

  test "should destroy roruser" do
    assert_difference('Roruser.count', -1) do
      delete roruser_url(@roruser)
    end

    assert_redirected_to rorusers_url
  end
end
