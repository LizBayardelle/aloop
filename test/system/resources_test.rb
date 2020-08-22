require "application_system_test_case"

class ResourcesTest < ApplicationSystemTestCase
  setup do
    @resource = resources(:one)
  end

  test "visiting the index" do
    visit resources_url
    assert_selector "h1", text: "Resources"
  end

  test "creating a Resource" do
    visit resources_url
    click_on "New Resource"

    check "Active" if @resource.active
    fill_in "Classification", with: @resource.classification
    fill_in "Description", with: @resource.description
    fill_in "Subcategory", with: @resource.subcategory
    fill_in "Title", with: @resource.title
    fill_in "User", with: @resource.user_id
    click_on "Create Resource"

    assert_text "Resource was successfully created"
    click_on "Back"
  end

  test "updating a Resource" do
    visit resources_url
    click_on "Edit", match: :first

    check "Active" if @resource.active
    fill_in "Classification", with: @resource.classification
    fill_in "Description", with: @resource.description
    fill_in "Subcategory", with: @resource.subcategory
    fill_in "Title", with: @resource.title
    fill_in "User", with: @resource.user_id
    click_on "Update Resource"

    assert_text "Resource was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource" do
    visit resources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource was successfully destroyed"
  end
end
