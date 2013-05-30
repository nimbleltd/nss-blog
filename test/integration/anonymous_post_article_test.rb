require 'test_helper'

class AnonymousPostArticleTest < ActionDispatch::IntegrationTest

  test "01 view list of articles" do
    Post.create!(title: "First Post!!", body: "This is cool I win!" )
    Post.create!(title: "Wow been a while", body: "and yet...")
    visit '/'
    click_link "View All Posts"
    assert_current_path '/posts'
    assert_include page.content, "First Post!!"
    assert_include page.content, "Wow been a while"

  end
end
