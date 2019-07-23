# frozen_string_literal: true

class Worker < User
  has_and_belongs_to_many :skills, join_table: :skills_workers
end
