require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(body: "Sample body")
    assert_not post.save, "Saved the post without a title"
  end

  test "should save post with title and body" do
    post = Post.new(title: "Sample title", body: "Sample body")
    assert post.save, "Could not save the post with a title and body"
  end
end
