require 'rails_helper'

RSpec.describe LikePost, type: :model do
  context 'Association' do
    it 'should belong to user' do
      l = LikePost.reflect_on_association(:user)
      expect(l.macro).to eq(:belongs_to)
    end
    it 'should belong to post' do
      l = LikePost.reflect_on_association(:post)
      expect(l.macro).to eq(:belongs_to)
    end
  end
end
