require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    it 'ensures email and password presence' do
      user = User.new(email: 'foobar@gmail.com', password: 'foobar').save
      expect(user).to eq(true)
    end
  end

  context 'Association' do
    it 'should have many posts' do
      u = User.reflect_on_association(:posts)
      expect(u.macro).to eq(:has_many)
    end
    it 'should have many comments' do
      u = User.reflect_on_association(:comments)
      expect(u.macro).to eq(:has_many)
    end
    it 'should have many like posts' do
      u = User.reflect_on_association(:like_posts)
      expect(u.macro).to eq(:has_many)
    end
    it 'should have many like comments' do
      u = User.reflect_on_association(:like_comments)
      expect(u.macro).to eq(:has_many)
    end
  end
end