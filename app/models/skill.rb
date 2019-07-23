# frozen_string_literal: true

class Skill < ApplicationRecord
  validates :name, presence: true, length: { maximum: 128 }, uniqueness: true

  has_and_belongs_to_many :workers, join_table: :skills_workers
end
