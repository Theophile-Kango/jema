require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Association' do
    it 'should belong to user' do
      c = Comment.reflect_on_association(:user)
      expect(c.macro).to eq(:belongs_to)
    end
    it 'should belong to post' do
      c = Comment.reflect_on_association(:post)
      expect(c.macro).to eq(:belongs_to)
    end
  end
end
