# frozen_string_literal: true

class Skill < ApplicationRecord
  validates :name, presence: true, length: { maximum: 128 }, uniqueness: true

  has_many :abilities, dependent: :destroy
  has_many :workers, through: :abilities

  scope :ordered, -> { order(name: :asc) }
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
