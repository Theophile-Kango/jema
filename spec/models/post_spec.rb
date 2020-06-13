require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
      post = Post.new(content: 'House with a confortable place').save
      expect(post).to eq(false)
    end
  end

  context 'Association' do
    it 'should belong to user' do
      p = Post.reflect_on_association(:user)
      expect(p.macro).to eq(:belongs_to)
    end
    it 'should have many comments' do
      p = Post.reflect_on_association(:comments)
      expect(p.macro).to eq(:has_many)
    end
    it 'should have many tags' do
      p = Post.reflect_on_association(:tags)
      expect(p.macro).to eq(:has_many)
    end
    it 'should have many taggings' do
      p = Post.reflect_on_association(:taggings)
      expect(p.macro).to eq(:has_many)
    end
    it 'should have many likes' do
      p = Post.reflect_on_association(:like_posts)
      expect(p.macro).to eq(:has_many)
    end
  end
end