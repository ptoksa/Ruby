require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get posts_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a new post" do
      expect {
        post posts_path, params: { post: { title: 'New Post', body: 'New body content' } }
      }.to change(Post, :count).by(1)
      expect(response).to redirect_to(post_path(Post.last))
    end
  end
end
