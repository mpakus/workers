# frozen_string_literal: true

RSpec.describe Skill, type: :model do
  context 'with validation' do
    let(:name) { 'cooking' }

    context 'with validation' do
      subject { described_class.new }

      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_most(128) }
      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
