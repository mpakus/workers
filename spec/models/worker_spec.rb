# frozen_string_literal: true

RSpec.describe Worker, type: :model do
  subject { described_class.new }

  context 'with relations' do
    it { is_expected.to have_and_belong_to_many(:skills) }
  end
end
