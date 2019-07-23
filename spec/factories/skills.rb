# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    name { ['cooking', 'house cleaning', 'fixing wireless networks'].sample }
  end
end

# == Schema Information
#
# Table name: skills
#
#  id         :bigint(8)        not null, primary key
#  name       :string(128)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
