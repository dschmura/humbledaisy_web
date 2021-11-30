require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:one)
  end

  test "visiting the index" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "creating a Board" do
    visit boards_url
    click_on "New Board"

    fill_in "Description", with: @board.description
    fill_in "Title", with: @board.title
    click_on "Create Board"

    assert_text "Board was successfully created"
    assert_selector "h1", text: "Boards"
  end

  test "updating a Board" do
    visit board_url(@board)
    click_on "Edit", match: :first

    fill_in "Description", with: @board.description
    fill_in "Title", with: @board.title
    click_on "Update Board"

    assert_text "Board was successfully updated"
    assert_selector "h1", text: "Boards"
  end

  test "destroying a Board" do
    visit edit_board_url(@board)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Board was successfully destroyed"
  end
end
