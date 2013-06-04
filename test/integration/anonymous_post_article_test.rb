require 'test_helper'

class AnonymousPostArticleTest < ActionDispatch::IntegrationTest

  test "01 view list of articles" do
    Post.create!(title: "First Post!!", body: "This is cool I win!" )
    Post.create!(title: "Wow been a while", body: "and yet... I'm still not a writer, lol.")

    visit '/posts'
    # click_link "View All Posts"
    assert_equal 2, Post.count
    assert_include page.body, "All Posts"
    assert_include page.body, "First Post!!"
    assert_include page.body, "Wow been a while"

  end
end
