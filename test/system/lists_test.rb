require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "Lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    fill_in "Board", with: @list.board_id
    fill_in "Description", with: @list.description
    fill_in "Name", with: @list.name
    fill_in "Position", with: @list.position
    click_on "Create List"

    assert_text "List was successfully created"
    assert_selector "h1", text: "Lists"
  end

  test "updating a List" do
    visit list_url(@list)
    click_on "Edit", match: :first

    fill_in "Board", with: @list.board_id
    fill_in "Description", with: @list.description
    fill_in "Name", with: @list.name
    fill_in "Position", with: @list.position
    click_on "Update List"

    assert_text "List was successfully updated"
    assert_selector "h1", text: "Lists"
  end

  test "destroying a List" do
    visit edit_list_url(@list)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "List was successfully destroyed"
  end
end
