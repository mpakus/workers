# frozen_string_literal: true

RSpec.describe Worker, type: :model do
  subject { described_class.new }

  context 'with relations' do
    it { is_expected.to have_many(:abilities) }
    it { is_expected.to have_many(:skills) }
  end

  context 'with scopes' do
    let!(:worker_a) { FactoryBot.create(:worker, name: 'A-worker') }
    let!(:worker_c) { FactoryBot.create(:worker, name: 'C-worker') }
    let!(:worker_b) { FactoryBot.create(:worker, name: 'B-worker') }

    it { expect(described_class.ordered.to_a).to match_array([worker_a, worker_b, worker_c]) }
  end
end
