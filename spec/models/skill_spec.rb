# frozen_string_literal: true

RSpec.describe Skill, type: :model do
  subject { described_class.new }

  context 'with validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(128) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  context 'with relations' do
    it { is_expected.to have_many(:abilities) }
    it { is_expected.to have_many(:workers) }
  end

  context 'with scopes' do
    let!(:skill_a) { FactoryBot.create(:skill, name: 'A-skill') }
    let!(:skill_c) { FactoryBot.create(:skill, name: 'C-skill') }
    let!(:skill_b) { FactoryBot.create(:skill, name: 'B-skill') }

    it { expect(described_class.ordered.to_a).to match_array([skill_a, skill_b, skill_c]) }
  end
end
