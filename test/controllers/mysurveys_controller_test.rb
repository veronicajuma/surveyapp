require "test_helper"

class MysurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mysurvey = mysurveys(:one)
  end

  test "should get index" do
    get mysurveys_url
    assert_response :success
  end

  test "should get new" do
    get new_mysurvey_url
    assert_response :success
  end

  test "should create mysurvey" do
    assert_difference('Mysurvey.count') do
      post mysurveys_url, params: { mysurvey: { laptop: @mysurvey.laptop, name: @mysurvey.name, type: @mysurvey.type } }
    end

    assert_redirected_to mysurvey_url(Mysurvey.last)
  end

  test "should show mysurvey" do
    get mysurvey_url(@mysurvey)
    assert_response :success
  end

  test "should get edit" do
    get edit_mysurvey_url(@mysurvey)
    assert_response :success
  end

  test "should update mysurvey" do
    patch mysurvey_url(@mysurvey), params: { mysurvey: { laptop: @mysurvey.laptop, name: @mysurvey.name, type: @mysurvey.type } }
    assert_redirected_to mysurvey_url(@mysurvey)
  end

  test "should destroy mysurvey" do
    assert_difference('Mysurvey.count', -1) do
      delete mysurvey_url(@mysurvey)
    end

    assert_redirected_to mysurveys_url
  end
end
