require 'test_helper'

class AndroidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @android = androids(:one)
  end

  test "should get index" do
    get androids_url
    assert_response :success
  end

  test "should get new" do
    get new_android_url
    assert_response :success
  end

  test "should create android" do
    assert_difference('Android.count') do
      post androids_url, params: { android: { brand: @android.brand, camera: @android.camera, internal_storage: @android.internal_storage, mpixels: @android.mpixels, name: @android.name, num_of_sim_slots: @android.num_of_sim_slots, num_of_stock: @android.num_of_stock, operating_system: @android.operating_system, screensize: @android.screensize, year_released: @android.year_released } }
    end

    assert_redirected_to android_url(Android.last)
  end

  test "should show android" do
    get android_url(@android)
    assert_response :success
  end

  test "should get edit" do
    get edit_android_url(@android)
    assert_response :success
  end

  test "should update android" do
    patch android_url(@android), params: { android: { brand: @android.brand, camera: @android.camera, internal_storage: @android.internal_storage, mpixels: @android.mpixels, name: @android.name, num_of_sim_slots: @android.num_of_sim_slots, num_of_stock: @android.num_of_stock, operating_system: @android.operating_system, screensize: @android.screensize, year_released: @android.year_released } }
    assert_redirected_to android_url(@android)
  end

  test "should destroy android" do
    assert_difference('Android.count', -1) do
      delete android_url(@android)
    end

    assert_redirected_to androids_url
  end
end
