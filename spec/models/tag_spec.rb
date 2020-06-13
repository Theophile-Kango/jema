require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'Association' do
    it 'should have many taggings' do
      t = Tag.reflect_on_association(:taggings)
      expect(t.macro).to eq(:has_many)
    end
    it 'should have many posts' do
      t = Tag.reflect_on_association(:posts)
      expect(t.macro).to eq(:has_many)
    end
  end
end
