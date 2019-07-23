class CreateJoinTableSkillWorker < ActiveRecord::Migration[5.2]
  def change
    create_join_table :skills, :workers do |t|
      t.index [:skill_id, :worker_id]
      t.index [:worker_id, :skill_id]
    end
  end
end
