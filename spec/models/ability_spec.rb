# frozen_string_literal: true

RSpec.describe Ability, type: :model do
  subject { described_class.new }

  context 'with relations' do
    it { is_expected.to belong_to(:worker) }
    it { is_expected.to belong_to(:skill) }
  end
end
