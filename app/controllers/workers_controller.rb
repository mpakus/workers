# frozen_string_literal: true

class WorkersController < ApplicationController
  layout :choose_layout

  def index; end

  private

  # @return [Array<Integer>]
  def current_skills
    params[:skills]&.reject(&:blank?)&.map(&:to_i) || []
  end
  helper_method :current_skills

  # @return [Array<Worker>]
  def workers
    return [] if current_skills.blank?

    WorkersBySkills.new(current_skills).perform
  end
  helper_method :workers

  # @return [Boolean]
  def choose_layout
    return false if request.xhr?
  end
end
