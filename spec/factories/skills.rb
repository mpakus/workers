# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    name { ['cooking', 'house cleaning', 'fixing wireless networks'].sample }
  end
end
