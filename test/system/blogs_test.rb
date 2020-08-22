require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "creating a Blog" do
    visit blogs_url
    click_on "New Blog"

    fill_in "Body", with: @blog.body
    check "Published" if @blog.published
    check "Published at" if @blog.published_at
    fill_in "Resource", with: @blog.resource_id
    fill_in "Slug", with: @blog.slug
    fill_in "Teaser", with: @blog.teaser
    fill_in "Title", with: @blog.title
    fill_in "User", with: @blog.user_id
    fill_in "Video url", with: @blog.video_url
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit blogs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blog.body
    check "Published" if @blog.published
    check "Published at" if @blog.published_at
    fill_in "Resource", with: @blog.resource_id
    fill_in "Slug", with: @blog.slug
    fill_in "Teaser", with: @blog.teaser
    fill_in "Title", with: @blog.title
    fill_in "User", with: @blog.user_id
    fill_in "Video url", with: @blog.video_url
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
