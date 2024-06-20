# spec/models/post_spec.rb
require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is not valid without a title' do
    post = Post.new(body: 'Sample body')
    expect(post).not_to be_valid
  end

  it 'is valid with a title and body' do
    post = Post.new(title: 'Sample title', body: 'Sample body')
    expect(post).to be_valid
  end
end
