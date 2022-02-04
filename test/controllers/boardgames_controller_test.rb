require 'test_helper'

class BoardgamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boardgame = boardgames(:one)
  end

  test "should get index" do
    get boardgames_url
    assert_response :success
  end

  test "should get new" do
    get new_boardgame_url
    assert_response :success
  end

  test "should create boardgame" do
    assert_difference('Boardgame.count') do
      post boardgames_url, params: { boardgame: { ages: @boardgame.ages, description: @boardgame.description, max_players: @boardgame.max_players, min_players: @boardgame.min_players, name: @boardgame.name } }
    end

    assert_redirected_to boardgame_url(Boardgame.last)
  end

  test "should show boardgame" do
    get boardgame_url(@boardgame)
    assert_response :success
  end

  test "should get edit" do
    get edit_boardgame_url(@boardgame)
    assert_response :success
  end

  test "should update boardgame" do
    patch boardgame_url(@boardgame), params: { boardgame: { ages: @boardgame.ages, description: @boardgame.description, max_players: @boardgame.max_players, min_players: @boardgame.min_players, name: @boardgame.name } }
    assert_redirected_to boardgame_url(@boardgame)
  end

  test "should destroy boardgame" do
    assert_difference('Boardgame.count', -1) do
      delete boardgame_url(@boardgame)
    end

    assert_redirected_to boardgames_url
  end
end