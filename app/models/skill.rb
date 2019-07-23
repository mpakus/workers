# frozen_string_literal: true

class Skill < ApplicationRecord
  validates :name, presence: true, length: { maximum: 128 }, uniqueness: true
end
