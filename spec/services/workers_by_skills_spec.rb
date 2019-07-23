# frozen_string_literal: true

RSpec.describe WorkersBySkills do
  # W1 - A, C
  # W2 - B, C
  # W3 - B
  # W4 - nil
  let!(:skill_a) { FactoryBot.create(:skill, name: 'A-skill') }
  let!(:skill_b) { FactoryBot.create(:skill, name: 'B-skill') }
  let!(:skill_c) { FactoryBot.create(:skill, name: 'C-skill') }

  let!(:worker1) { FactoryBot.create(:worker, name: 'Leon') }
  let!(:worker2) { FactoryBot.create(:worker, name: 'Abacus') }
  let!(:worker3) { FactoryBot.create(:worker, name: 'Xeon') }
  let!(:worker4) { FactoryBot.create(:worker, name: 'Vader') }

  before do
    worker1.skills << [skill_a, skill_c]
    worker2.skills << [skill_b, skill_c]
    worker3.skills << [skill_b]
  end

  describe '#perform' do
    context 'with A' do
      subject { described_class.new([skill_a.id]).perform }

      it { is_expected.to match_array([worker1]) }
    end

    context 'with A and C skills' do
      subject { described_class.new([skill_a.id, skill_c.id]).perform }

      it { is_expected.to match_array([worker2, worker1]) }
    end

    context 'with B and C skills' do
      subject { described_class.new([skill_b.id, skill_c.id]).perform }

      it { is_expected.to match_array([worker2, worker1, worker3]) }
    end

    context 'with B' do
      subject { described_class.new([skill_b.id]).perform }

      it { is_expected.to match_array([worker2, worker3]) }
    end
  end
end
