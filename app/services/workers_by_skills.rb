# frozen_string_literal: true

class WorkersBySkills
  def initialize(skills)
    @skills = skills
  end

  # @return [Array<Worker>]
  def perform
    Worker
      .includes(:skills)
      .where(skills: { id: Skill.where(id: skills) })
      .distinct
      .ordered
  end

  private

  attr_reader :skills
end
