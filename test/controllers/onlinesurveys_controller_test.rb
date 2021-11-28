require "test_helper"

class OnlinesurveysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onlinesurvey = onlinesurveys(:one)
  end

  test "should get index" do
    get onlinesurveys_url
    assert_response :success
  end

  test "should get new" do
    get new_onlinesurvey_url
    assert_response :success
  end

  test "should create onlinesurvey" do
    assert_difference('Onlinesurvey.count') do
      post onlinesurveys_url, params: { onlinesurvey: { laptop: @onlinesurvey.laptop, manufacturer: @onlinesurvey.manufacturer, name: @onlinesurvey.name } }
    end

    assert_redirected_to onlinesurvey_url(Onlinesurvey.last)
  end

  test "should show onlinesurvey" do
    get onlinesurvey_url(@onlinesurvey)
    assert_response :success
  end

  test "should get edit" do
    get edit_onlinesurvey_url(@onlinesurvey)
    assert_response :success
  end

  test "should update onlinesurvey" do
    patch onlinesurvey_url(@onlinesurvey), params: { onlinesurvey: { laptop: @onlinesurvey.laptop, manufacturer: @onlinesurvey.manufacturer, name: @onlinesurvey.name } }
    assert_redirected_to onlinesurvey_url(@onlinesurvey)
  end

  test "should destroy onlinesurvey" do
    assert_difference('Onlinesurvey.count', -1) do
      delete onlinesurvey_url(@onlinesurvey)
    end

    assert_redirected_to onlinesurveys_url
  end
end
