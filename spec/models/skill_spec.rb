# frozen_string_literal: true

RSpec.describe Skill, type: :model do
  subject { described_class.new }

  context 'with validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(128) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  context 'with relations' do
    it { is_expected.to have_and_belong_to_many(:workers) }
  end
end
