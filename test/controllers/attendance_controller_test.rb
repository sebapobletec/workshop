require 'test_helper'

class AttendanceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get attendance_create_url
    assert_response :success
  end

  test "should get edit" do
    get attendance_edit_url
    assert_response :success
  end

end
