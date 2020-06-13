require 'rails_helper'

RSpec.describe Tagging, type: :model do
  context 'Association' do
    it 'should belong to tag' do
      t = Tagging.reflect_on_association(:tag)
      expect(t.macro).to eq(:belongs_to)
    end
    it 'should belong to post' do
      t = Tagging.reflect_on_association(:post)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
