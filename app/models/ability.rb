# frozen_string_literal: true

class Ability < ApplicationRecord
  belongs_to :skill
  belongs_to :worker
end

# == Schema Information
#
# Table name: abilities
#
#  id        :bigint(8)        not null, primary key
#  skill_id  :bigint(8)        not null
#  worker_id :bigint(8)        not null
#
# Indexes
#
#  index_abilities_on_skill_id_and_worker_id  (skill_id,worker_id)
#  index_abilities_on_worker_id_and_skill_id  (worker_id,skill_id)
#
