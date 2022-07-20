require "test_helper"

class DesingersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desinger = desingers(:one)
  end

  test "should get index" do
    get desingers_url
    assert_response :success
  end

  test "should get new" do
    get new_desinger_url
    assert_response :success
  end

  test "should create desinger" do
    assert_difference("Desinger.count") do
      post desingers_url, params: { desinger: { email: "three", name: "three", passwort: @desinger.passwort } }
    end

    assert_redirected_to desinger_url(Desinger.last)
  end

  test "should show desinger" do
    get desinger_url(@desinger)
    assert_response :success
  end

  test "should get edit" do
    get edit_desinger_url(@desinger)
    assert_response :success
  end

  test "should update desinger" do
    patch desinger_url(@desinger), params: { desinger: { email: @desinger.email, name: @desinger.name, passwort: @desinger.passwort } }
    assert_redirected_to desinger_url(@desinger)
  end

  test "should destroy desinger" do
    assert_raises(ActiveRecord::InvalidForeignKey) do
      delete desinger_url(@desinger)
    end
    
    @desinger.posts.destroy_all
    assert_difference("Desinger.count", -1) do
      delete desinger_url(@desinger)
    end

    assert_redirected_to desingers_url
  end
end
