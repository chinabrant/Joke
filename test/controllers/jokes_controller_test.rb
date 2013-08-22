require 'test_helper'

class JokesControllerTest < ActionController::TestCase
  setup do
    @joke = jokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joke" do
    assert_difference('Joke.count') do
      post :create, joke: { category: @joke.category, content: @joke.content, time: @joke.time, title: @joke.title }
    end

    assert_redirected_to joke_path(assigns(:joke))
  end

  test "should show joke" do
    get :show, id: @joke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joke
    assert_response :success
  end

  test "should update joke" do
    patch :update, id: @joke, joke: { category: @joke.category, content: @joke.content, time: @joke.time, title: @joke.title }
    assert_redirected_to joke_path(assigns(:joke))
  end

  test "should destroy joke" do
    assert_difference('Joke.count', -1) do
      delete :destroy, id: @joke
    end

    assert_redirected_to jokes_path
  end
end
