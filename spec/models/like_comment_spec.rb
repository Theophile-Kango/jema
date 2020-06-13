require 'rails_helper'

RSpec.describe LikeComment, type: :model do
  context 'Association' do
    it 'should belong to user' do
      c = LikeComment.reflect_on_association(:user)
      expect(c.macro).to eq(:belongs_to)
    end
    it 'should belong to post' do
      c = LikeComment.reflect_on_association(:comment)
      expect(c.macro).to eq(:belongs_to)
    end
  end
end
